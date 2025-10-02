$ErrorActionPreference = 'Stop'
$dt   = Get-Date -Format yyyy-MM-dd
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $root) { $root = (Get-Location).Path }

$null = New-Item -ItemType Directory -Force -Path "$root\out" | Out-Null

# Separate stdout/stderr files to satisfy Start-Process constraints
$stdout = "$root\out\build.out.log"
$stderr = "$root\out\build.err.log"
if (Test-Path $stdout) { Remove-Item -Force $stdout }
if (Test-Path $stderr) { Remove-Item -Force $stderr }

$p = Start-Process -FilePath 'lualatex' `
    -ArgumentList @(
    '-file-line-error','-interaction=nonstopmode','-synctex=1',
    '-output-format=pdf',
    "-output-directory=$root\out",
    "-jobname=Anthony_Tabano_resume_$dt",
    "$root\resume.tex"
) `
    -WorkingDirectory $root -NoNewWindow -Wait -PassThru `
    -RedirectStandardOutput $stdout -RedirectStandardError $stderr

if ($p.ExitCode -ne 0) {
    # Show a small tail for context on failure
    if (Test-Path $stderr) { Get-Content $stderr -Tail 80 }
    elseif (Test-Path $stdout) { Get-Content $stdout -Tail 80 }
    throw "LaTeX build failed (exit $($p.ExitCode))."
}

# Keep output clean: only print final PDF path
$pdf = Resolve-Path "$root\out\Anthony_Tabano_resume_$dt.pdf"
Write-Output $pdf