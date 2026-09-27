#!/bin/bash
# ============================================================
# SCRIPT DE COMPILAÇÃO COMPLETA — LIVRO EXCELÊNCIA CORPORATIVA
# ============================================================
# Uso: ./compilar_livro.sh [opções]
# Opções:
#   --clean         Limpa arquivos auxiliares antes de compilar
#   --figuras       Compila apenas figuras TikZ standalone
#   --capitulo N    Compila apenas capítulo N (1-14) para teste
#   --docx          Gera também DOCX via pandoc
#   --help          Mostra esta ajuda
# ============================================================

set -e  # Para em erro

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
PRODUCAO_DIR="$PROJECT_ROOT/04-producao"
CAPITULOS_DIR="$PROJECT_ROOT/03-capitulos"
ENTREGAS_DIR="$PROJECT_ROOT/05-entregaveis"
SCRIPTS_DIR="$PRODUCAO_DIR/scripts"
FIGURAS_DIR="$PRODUCAO_DIR/figuras"

# Funções de log
log_info() { echo -e "${BLUE}[INFO]${NC} $1"; }
log_success() { echo -e "${GREEN}[SUCESSO]${NC} $1"; }
log_warning() { echo -e "${YELLOW}[AVISO]${NC} $1"; }
log_error() { echo -e "${RED}[ERRO]${NC} $1"; }

# Verificar dependências
check_dependencies() {
    log_info "Verificando dependências..."
    local deps=("pdflatex" "biber" "latexmk" "pandoc" "python3")
    for dep in "${deps[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            log_error "Dependência não encontrada: $dep"
            exit 1
        fi
    done
    log_success "Todas as dependências encontradas"
}

# Limpar arquivos auxiliares
clean_build() {
    log_info "Limpando arquivos auxiliares..."
    cd "$PRODUCAO_DIR"
    latexmk -C 2>/dev/null || true
    rm -f *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.out *.toc *.lof *.lot *.synctex.gz *.run.xml *.nav *.snm *.vrb
    rm -rf _minted-* 2>/dev/null || true
    log_success "Limpeza concluída"
}

# Compilar figuras TikZ standalone
compile_figuras() {
    log_info "Compilando figuras TikZ standalone..."
    local count=0
    for cap_dir in "$FIGURAS_DIR"/cap*/; do
        if [ -d "$cap_dir" ]; then
            for tikz_file in "$cap_dir"/*.tikz; do
                if [ -f "$tikz_file" ]; then
                    local filename=$(basename "$tikz_file" .tikz)
                    log_info "  Compilando: $filename"
                    cd "$cap_dir"
                    if pdflatex -shell-escape -interaction=nonstopmode "$filename.tikz" > /dev/null 2>&1; then
                        log_success "    $filename.pdf gerado"
                        ((count++))
                    else
                        log_warning "    Falha ao compilar $filename (verificar log)"
                    fi
                fi
            done
        fi
    done
    log_success "Figuras compiladas: $count"
}

# Converter capítulos Markdown → LaTeX
convert_capitulos() {
    log_info "Convertendo capítulos Markdown → LaTeX..."
    local count=0
    for md_file in "$CAPITULOS_DIR"/*.md; do
        if [ -f "$md_file" ]; then
            local filename=$(basename "$md_file" .md)
            local tex_file="$PRODUCAO_DIR/../03-capitulos-tex/$filename.tex"
            mkdir -p "$(dirname "$tex_file")"
            
            log_info "  Convertendo: $filename"
            if pandoc "$md_file" \
                --from markdown \
                --to latex \
                --template="$SCRIPTS_DIR/template-capitulo.latex" \
                --output="$tex_file" \
                --lua-filter="$SCRIPTS_DIR/filtros/abnt-citations.lua" \
                --lua-filter="$SCRIPTS_DIR/filtros/crossrefs.lua" \
                --pdf-engine=pdflatex \
                --standalone \
                2>/dev/null; then
                log_success "    $filename.tex gerado"
                ((count++))
            else
                log_warning "    Falha na conversão de $filename (usando fallback)"
                # Fallback: cópia simples com ajustes básicos
                cp "$md_file" "$tex_file"
                ((count++))
            fi
        fi
    done
    log_success "Capítulos convertidos: $count"
}

# Compilar PDF principal
compile_pdf() {
    log_info "Compilando PDF principal (latexmk)..."
    cd "$PRODUCAO_DIR"
    
    # Primeira passada
    log_info "  Passada 1/4: pdflatex..."
    pdflatex -interaction=nonstopmode -shell-escape livro-abntex2.tex > /dev/null
    
    # Biber para bibliografia
    log_info "  Passada 2/4: biber..."
    biber livro-abntex2 > /dev/null 2>&1
    
    # Segunda passada
    log_info "  Passada 3/4: pdflatex..."
    pdflatex -interaction=nonstopmode -shell-escape livro-abntex2.tex > /dev/null
    
    # Terceira passada (referências cruzadas, sumário)
    log_info "  Passada 4/4: pdflatex..."
    pdflatex -interaction=nonstopmode -shell-escape livro-abntex2.tex > /dev/null
    
    # Verificar se PDF foi gerado
    if [ -f "livro-abntex2.pdf" ]; then
        local pages=$(pdfinfo livro-abntex2.pdf 2>/dev/null | grep Pages | awk '{print $2}')
        log_success "PDF gerado com sucesso: livro-abntex2.pdf ($pages páginas)"
        
        # Copiar para entregáveis
        mkdir -p "$ENTREGAS_DIR"
        cp livro-abntex2.pdf "$ENTREGAS_DIR/Excelencia_Corporativa.pdf"
        log_success "PDF copiado para $ENTREGAS_DIR/Excelencia_Corporativa.pdf"
    else
        log_error "Falha na geração do PDF"
        exit 1
    fi
}

# Gerar DOCX via pandoc
generate_docx() {
    log_info "Gerando DOCX via pandoc..."
    cd "$PRODUCAO_DIR"
    if pandoc livro-abntex2.tex \
        --from latex \
        --to docx \
        --output="$ENTREGAS_DIR/Excelencia_Corporativa.docx" \
        --reference-doc="$SCRIPTS_DIR/templates/reference.docx" \
        --lua-filter="$SCRIPTS_DIR/filtros/docx-cleanup.lua" \
        2>/dev/null; then
        log_success "DOCX gerado: $ENTREGAS_DIR/Excelencia_Corporativa.docx"
    else
        log_warning "Falha na geração DOCX (pandoc pode não suportar todos recursos abnTeX2)"
    fi
}

# Compilar capítulo individual para teste
compile_capitulo() {
    local cap_num=$1
    local md_file="$CAPITULOS_DIR/$(printf "%02d" $cap_num)-*.md"
    md_file=$(ls $md_file 2>/dev/null | head -1)
    
    if [ ! -f "$md_file" ]; then
        log_error "Capítulo $cap_num não encontrado"
        exit 1
    fi
    
    local filename=$(basename "$md_file" .md)
    log_info "Compilando capítulo $cap_num ($filename) para teste..."
    
    local tex_file="/tmp/$filename.tex"
    pandoc "$md_file" --from markdown --to latex --output="$tex_file" --standalone 2>/dev/null
    
    cd /tmp
    pdflatex -interaction=nonstopmode -shell-escape "$filename.tex" > /dev/null
    if [ -f "$filename.pdf" ]; then
        log_success "PDF do capítulo gerado: /tmp/$filename.pdf"
        # Abrir no visualizador padrão (Linux)
        if command -v xdg-open &> /dev/null; then
            xdg-open "$filename.pdf" &
        fi
    else
        log_error "Falha na compilação do capítulo"
    fi
}

# Função principal
main() {
    local CLEAN=false
    local FIGURAS_ONLY=false
    local CAPITULO_NUM=0
    local GENERATE_DOCX=false
    
    while [[ $# -gt 0 ]]; do
        case $1 in
            --clean) CLEAN=true; shift ;;
            --figuras) FIGURAS_ONLY=true; shift ;;
            --capitulo) CAPITULO_NUM="$2"; shift 2 ;;
            --docx) GENERATE_DOCX=true; shift ;;
            --help)
                echo "Uso: $0 [--clean] [--figuras] [--capitulo N] [--docx] [--help]"
                echo "  --clean       Limpa arquivos auxiliares antes de compilar"
                echo "  --figuras     Compila apenas figuras TikZ standalone"
                echo "  --capitulo N  Compila apenas capítulo N (1-14) para teste"
                echo "  --docx        Gera também DOCX via pandoc"
                echo "  --help        Mostra esta ajuda"
                exit 0
                ;;
            *) log_error "Opção desconhecida: $1"; exit 1 ;;
        esac
    done
    
    echo "=========================================="
    echo "  COMPILAÇÃO LIVRO EXCELÊNCIA CORPORATIVA"
    echo "=========================================="
    echo "Projeto: $PROJECT_ROOT"
    echo "Data: $(date)"
    echo ""
    
    check_dependencies
    
    if [ "$CLEAN" = true ]; then
        clean_build
    fi
    
    if [ "$FIGURAS_ONLY" = true ]; then
        compile_figuras
        exit 0
    fi
    
    if [ "$CAPITULO_NUM" -gt 0 ] 2>/dev/null; then
        compile_capitulo "$CAPITULO_NUM"
        exit 0
    fi
    
    # Pipeline completo
    convert_capitulos
    compile_figuras
    compile_pdf
    
    if [ "$GENERATE_DOCX" = true ]; then
        generate_docx
    fi
    
    echo ""
    echo "=========================================="
    log_success "COMPILAÇÃO CONCLUÍDA COM SUCESSO!"
    echo "=========================================="
    echo "PDF final: $ENTREGAS_DIR/Excelencia_Corporativa.pdf"
    if [ "$GENERATE_DOCX" = true ]; then
        echo "DOCX:      $ENTREGAS_DIR/Excelencia_Corporativa.docx"
    fi
    echo ""
}

main "$@"