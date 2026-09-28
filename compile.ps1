<# 
.SYNOPSIS
    Compila o livro "Excelência Corporativa" usando o pipeline Python build.py

.DESCRIPTION
    Executa o pipeline completo: clean -> md2tex -> fix_transversais -> lualatex x3 + bibtex -> validação
    Requer Python 3.12+ e MiKTeX com LuaLaTeX.

.PARAMETER Quick
    Pula as 2 passagens extras do LuaLaTeX (apenas 1 passagem + bibtex).

.PARAMETER SkipMd
    Pula a conversão Markdown -> LaTeX (usa .tex ja existentes).

.PARAMETER Keep
    Nao remove artefatos anteriores antes de compilar.

.EXAMPLE
    .\compile.ps1
    .\compile.ps1 -Quick
    .\compile.ps1 -SkipMd
#>

param(
    [switch]$Quick,
    [switch]$SkipMd,
    [switch]$Keep
)

$ErrorActionPreference = "Stop"
$PY = "C:\Users\jeron\AppData\Local\Programs\Python\Python312\python.exe"
$BUILD = "C:\compile-agent\build.py"
$ARGS = @("-W", "ignore", $BUILD)

if ($Quick)    { $ARGS += "--quick" }
if ($SkipMd)   { $ARGS += "--skip-md" }
if ($Keep)     { $ARGS += "--keep" }

Write-Host "=== Compilando Excelência Corporativa ===" -ForegroundColor Cyan
Write-Host "Python: $PY" -ForegroundColor Gray
Write-Host "Args:   $ARGS" -ForegroundColor Gray
Write-Host ""

& $PY @ARGS

$exitCode = $LASTEXITCODE
if ($exitCode -eq 0) {
    Write-Host "`n=== SUCESSO: PDF gerado em 04-producao/livro-abntex2.pdf ===" -ForegroundColor Green
} else {
    Write-Error "FALHA na compilacao (exit code $exitCode)"
    exit $exitCode
}