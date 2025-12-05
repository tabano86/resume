<#
.SYNOPSIS
    Builds the resume PDF using LuaLaTeX.
.DESCRIPTION
    Compiles resume.tex with lualatex, outputting a dated PDF to the /out directory.
    Requires lualatex in PATH (install via MiKTeX or TeX Live).
.EXAMPLE
    .\build.ps1
    Builds: out\Anthony_Tabano_resume_2025-12-05.pdf
#>

[CmdletBinding()]
param(
    [switch]$Clean,
    [switch]$Open
)

$ErrorActionPreference = 'Stop'
$Date = Get-Date -Format 'yyyy-MM-dd'
$Root = $PSScriptRoot
if (-not $Root) { $Root = (Get-Location).Path }

$OutDir = Join-Path $Root 'out'
$JobName = "Anthony_Tabano_resume_$Date"
$TexFile = Join-Path $Root 'resume.tex'

# Clean mode
if ($Clean) {
    if (Test-Path $OutDir) {
        Remove-Item -Recurse -Force $OutDir
        Write-Host "Cleaned build artifacts" -ForegroundColor Green
    }
    exit 0
}

# Ensure output directory exists
$null = New-Item -ItemType Directory -Force -Path $OutDir

# Build
Write-Host "Building resume..." -ForegroundColor Cyan

$StdOut = Join-Path $OutDir 'build.out.log'
$StdErr = Join-Path $OutDir 'build.err.log'
if (Test-Path $StdOut) { Remove-Item -Force $StdOut }
if (Test-Path $StdErr) { Remove-Item -Force $StdErr }

$Process = Start-Process -FilePath 'lualatex' -ArgumentList @(
    '-file-line-error',
    '-interaction=nonstopmode',
    '-synctex=1',
    '-output-format=pdf',
    "-output-directory=$OutDir",
    "-jobname=$JobName",
    $TexFile
) -WorkingDirectory $Root -NoNewWindow -Wait -PassThru `
  -RedirectStandardOutput $StdOut -RedirectStandardError $StdErr

if ($Process.ExitCode -ne 0) {
    Write-Host "`nBuild failed. Last 40 lines of output:" -ForegroundColor Red
    if (Test-Path $StdOut) {
        Get-Content $StdOut -Tail 40 | ForEach-Object { Write-Host $_ -ForegroundColor Yellow }
    }
    throw "LaTeX build failed (exit $($Process.ExitCode))"
}

$PdfPath = Join-Path $OutDir "$JobName.pdf"
Write-Host "Built: $PdfPath" -ForegroundColor Green

# Open mode
if ($Open) {
    Start-Process $PdfPath
}

# Return path for scripting
$PdfPath
