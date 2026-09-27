# Excelência Corporativa — Livro Completo (14 Capítulos)

**Autor:** Jeronimo Alves dos Santos  
**Instituição:** UFSCar  
**Ano:** 2026  
**ISBN:** 978-65-XXXX-XXXX-X  

---

## 📁 Estrutura do Projeto

```
livro-gestao-excelencia/
├── 01-planejamento/                    # Etapa 1: Planejamento (briefing, escopo)
├── 02-matriz-literatura/               # Etapa 2: Matriz global de referências
│   ├── README.md
│   ├── matriz-caps-01-04.md
│   ├── matriz-caps-05-08.md
│   ├── matriz-caps-09-11.md
│   └── matriz-caps-12-14.md
├── 03-capitulos/                       # Etapa 3-5: Capítulos completos (Markdown)
│   ├── 01-planejamento-estrategico.md
│   ├── 02-gestao-financeira.md
│   ├── 03-operacoes-cadeia-suprimentos.md
│   ├── 04-gestao-pessoas-lideranca.md
│   ├── 05-marketing-vendas.md
│   ├── 06-gestao-projetos-portfolio.md
│   ├── 07-inovacao-desenvolvimento-produtos.md
│   ├── 08-gestao-qualidade-excelencia.md
│   ├── 09-tecnologia-informacao-dados.md
│   ├── 10-comunicacao-stakeholders.md
│   ├── 11-sustentabilidade-esg.md
│   ├── 12-compliance-governanca.md
│   ├── 13-gestao-riscos-corporativos.md
│   └── 14-transformacao-digital-ia.md
├── 02-textos-transversais/             # Textos transversais (LaTeX)
│   ├── abreviaturas.tex
│   ├── prefacio.tex
│   ├── introducao-geral.tex
│   ├── consideracoes-finais.tex
│   ├── glossario.tex
│   ├── apendice-a-matriz-literatura.tex
│   ├── apendice-b-figuras-originais.tex
│   └── apendice-c-dados-reais.tex
├── 04-producao/                        # Etapa 6: Produção LaTeX/PDF
│   ├── livro-abntex2.tex               # Arquivo principal LaTeX
│   ├── referencias.bib                 # Bibliografia BibTeX (1.200+ entradas)
│   ├── metadata.yaml                   # Metadados (título, autor, ISBN, etc.)
│   ├── scripts/
│   │   ├── gerar_bib.py                # Gera .bib a partir da matriz
│   │   ├── converter_md_tex.py         # Converte Markdown → LaTeX (pandoc)
│   │   ├── baixar_dados.py             # Download automático fontes oficiais
│   │   └── compilar_livro.sh           # Script completo de compilação
│   ├── figuras/                        # 56 figuras TikZ/pgfplots (vetoriais)
│   │   ├── estilo-comum.tikz
│   │   ├── cap01/ ... cap14/
│   │   └── README.md
│   └── dados/                          # Dados reais consolidados (CSV/Excel)
│       ├── macro/
│       ├── setorial/
│       ├── empresas/
│       ├── benchmarks/
│       └── fontes_referencia.md
└── 05-entregaveis/                     # Entregáveis finais
    ├── Excelencia_Corporativa.pdf      # PDF final (abnTeX2)
    ├── Excelencia_Corporativa.docx     # DOCX (pandoc)
    ├── capa.pdf                        # Capa isolada
    └── sumario.pdf                     # Sumário isolado
```

---

## 🚀 Compilação Rápida

### Pré-requisitos
```bash
# Ubuntu/Debian
sudo apt-get install texlive-full texlive-lang-portuguese biber latexmk pandoc python3-pip

# Windows (via Chocolatey)
choco install texlive biber latexmk pandoc python

# macOS (via Homebrew)
brew install --cask mactex
brew install biber latexmk pandoc python
```

### Compilar PDF Final
```bash
cd 04-producao
chmod +x scripts/compilar_livro.sh
./scripts/compilar_livro.sh
```

O script executa:
1. Converte capítulos Markdown → LaTeX (pandoc + filtros ABNT)
2. Processa figuras TikZ standalone → PDF vetorial
3. Compila LaTeX principal: `latexmk -pdf -interaction=nonstopmode livro-abntex2.tex`
   - Roda: `pdflatex` → `biber` → `pdflatex` → `pdflatex`
4. Gera `livro-abntex2.pdf` (PDF final com capa, sumário, figuras, referências)
5. Opcional: `pandoc -s livro-abntex2.tex -o ../05-entregaveis/Excelencia_Corporativa.docx`

### Compilar Apenas Um Capítulo (teste)
```bash
cd 04-producao
pdflatex -shell-escape "\input{../03-capitulos/01-planejamento-estrategico.md}"
```

---

## 📊 Entregáveis por Etapa

| Etapa | Descrição | Status | Arquivos |
|-------|-----------|--------|----------|
| **1** | Planejamento Estratégico & Análise Ambiente | ✅ | `01-planejamento/` |
| **2** | Matriz Literatura Global (14 caps × 20+ refs) | ✅ | `02-matriz-literatura/` |
| **3** | Redação Completa Cap. 1 (padrão ABNT) | ✅ | `03-capitulos/01-*.md` |
| **3** | Redação Completas Caps. 2–14 | ✅ | `03-capitulos/02-*.md` a `14-*.md` |
| **4** | Template LaTeX/abnTeX2 (capa, figuras, refs) | ✅ | `04-producao/livro-abntex2.tex` |
| **5** | Textos Transversais + Apêndices A–C | ✅ | `02-textos-transversais/` |
| **6** | Bibliografia BibTeX (1.200+ entradas) | ✅ | `04-producao/referencias.bib` |
| **7** | Scripts automação (build, dados, conversão) | ✅ | `04-producao/scripts/` |
| **8** | 56 Figuras TikZ/pgfplots (vetoriais) | 📋 | `04-producao/figuras/` |
| **9** | PDF Final + DOCX sincronizado | ⏳ | `05-entregaveis/` |

---

## 🎨 Identidade Visual (TikZ/pgfplots)

```latex
% Cores da marca (definidas em estilo-comum.tikz)
\definecolor{ecnavy}{RGB}{12,28,58}      % Azul corporativo escuro
\definecolor{ecgold}{RGB}{205,165,42}    % Dourado (destaque)
\definecolor{ecdark}{RGB}{8,18,38}       % Quase preto (fundo capa)
\definecolor{eclight}{RGB}{245,243,238}  % Off-white (fundo caixas)
\definecolor{ecteal}{RGB}{0,128,115}     % Verde-azulado (subtítulos)
\definecolor{eccoral}{RGB}{230,95,70}    % Coral (alertas/valores)
```

Todas as 56 figuras originais usam esta paleta + fontes Helvetica/sans-serif.

---

## 🔬 Metodologia Rigorosa

- **Levantamento bibliográfico:** 14 capítulos × 4–6 eixos × 20+ refs = **1.200+ referências** (seminais + 2020–2025)
- **Cases integradores:** Magazine Luiza, Weg, Nubank + 1 setorial/capítulo (Embraer, Natura, Ambev, Petrobras, JBS, Einstein, BB, Vale)
- **Dados reais 2024–2025:** IBGE, BCB, CVM, B3, CNI, CGI.br, ILOS, IAB, FNQ, IBGC, WEF, McKinsey, BCG, Gartner, PwC, KPMG, AON, Protiviti, SBTi, TCFD, NGFS, ISO, COSO, IIA
- **4 figuras/tabelas originais por capítulo:** 56 artefatos vetoriais (Strategy Maps, OKR Cascades, Dynamic Capabilities Loops, Blue Ocean Canvases, DuPont, Rolling Forecast, VSM, Kraljic, Heat Maps, 9-Box, Leadership Pipeline, Customer Journeys, RevOps Funnels, MarTech Stacks, CAC/LTV, Hybrid Matrices, Portfolio Kanbans, PMO Dashboards, Innovation Funnels, JTBD Maps, 3 Horizons, Adoption/Chasm, QFD, DMAIC, MEG Scorecards, CoQ, EA Maps, Data Maturity, Cloud Adoption, Cyber Heat Maps, Stakeholder Salience, Crisis Timelines, Social Listening, Materiality, Net Zero Roadmaps, Value Chain ESG, Integrated Value, Compliance Matrices, DD Flows, Three Lines, Implementation Timelines, Bow-Tie, RAS, Risk Heat Maps, Climate Scenarios, AI Maturity, GenAI Portfolios, MLOps Pipelines, Responsible AI Frameworks)
- **Formato ABNT:** Referências NBR 6023, estrutura ABNT (capa, folha rosto, ficha catalográfica, sumário, listas figuras/tabelas, siglas, capítulos, referências, glossário, apêndices)

---

## 📄 Licença e Uso de IA

Conforme **Portaria CNPq nº 2.664/2026**, declara-se uso de IA generativa como ferramenta de apoio em:
1. Levantamento bibliográfico sistemático
2. Estruturação da matriz de literatura
3. Redação de rascunhos dos capítulos
4. Criação de artefatos visuais (código TikZ)
5. Edição, revisão ABNT, formatação LaTeX

**Controle intelectual integral mantido pelo autor.** Responsabilidade total pelo conteúdo.

---

## 📞 Contato

**Autor:** Jeronimo Alves dos Santos  
**E-mail:** jeronimo.alves@ufscar.br  
**Instituição:** Universidade Federal de São Carlos (UFSCar)  
**Projeto:** Livro "Excelência Corporativa: Estratégias e Ferramentas Integradas para Liderança em Gestão e Inovação"

---

*Última atualização: 2026*  
*Versão: 1.0 (manuscrito completo para revisão)*