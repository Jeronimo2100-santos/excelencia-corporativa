<#
.SYNOPSIS
    Monitora alterações nos arquivos .md e recompila automaticamente.

.DESCRIPTION
    Usa FileSystemWatcher para detectar mudanças em 03-capitulos/*.md e
    02-textos-transversais/*.tex e dispara compile.ps1 -SkipMd -Quick.

.REQUIREMENTS
    PowerShell 5.1+, Python 3.12+, MiKTeX.

.EXAMPLE
    .\watch.ps1
#>

$ErrorActionPreference = "Stop"
$ROOT = "C:\Agentes\Livros\livro-gestao-excelencia"
$PY = "C:\Users\jeron\AppData\Local\Programs\Python\Python312\python.exe"
$BUILD = "C:\compile-agent\build.py"

$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = "$ROOT\03-capitulos"
$watcher.Filter = "*.md"
$watcher.IncludeSubdirectories = $false
$watcher.EnableRaisingEvents = $true

$watcher2 = New-Object System.IO.FileSystemWatcher
$watcher2.Path = "$ROOT\02-textos-transversais"
$watcher2.Filter = "*.tex"
$watcher2.IncludeSubdirectories = $false
$watcher2.EnableRaisingEvents = $true

$debounce = 2  # segundos
$lastRun = [DateTime]::MinValue

$action = {
    param($path, $changeType)
    $now = Get-Date
    if (($now - $script:lastRun).TotalSeconds -lt $script:debounce) { return }
    $script:lastRun = $now
    Write-Host "`n[$($now.ToString('HH:mm:ss'))] $changeType: $path" -ForegroundColor Yellow
    & $script:PY -W ignore $script:BUILD --skip-md --quick
}

$watcher.RegisterObjectEvent("Changed", -SourceIdentifier "MDChanged", -Action $action) | Out-Null
$watcher.RegisterObjectEvent("Created", -SourceIdentifier "MDCreated", -Action $action) | Out-Null
$watcher2.RegisterObjectEvent("Changed", -SourceIdentifier "TEXChanged", -Action $action) | Out-Null
$watcher2.RegisterObjectEvent("Created", -SourceIdentifier "TEXCreated", -Action $action) | Out-Null

Write-Host "=== WATCH MODE ATIVO ===" -ForegroundColor Cyan
Write-Host "Monitorando: $ROOT\03-capitulos\*.md" -ForegroundColor Gray
Write-Host "Monitorando: $ROOT\02-textos-transversais\*.tex" -ForegroundColor Gray
Write-Host "Pressione Ctrl+C para parar.`n" -ForegroundColor Gray

try {
    while ($true) { Start-Sleep -Seconds 5 }
}
finally {
    Unregister-Event -SourceIdentifier "MDChanged" -ErrorAction SilentlyContinue
    Unregister-Event -SourceIdentifier "MDCreated" -ErrorAction SilentlyContinue
    Unregister-Event -SourceIdentifier "TEXChanged" -ErrorAction SilentlyContinue
    Unregister-Event -SourceIdentifier "TEXCreated" -ErrorAction SilentlyContinue
    $watcher.Dispose()
    $watcher2.Dispose()
    Write-Host "`nWatch finalizado." -ForegroundColor Cyan
}