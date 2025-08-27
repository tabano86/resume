# LaTeX Build & Preview Guide

*For Windows and macOS (IntelliJ IDEA or command line)*

## Prerequisites

- Use XeLaTeX or LuaLaTeX (required if the project uses fontspec)
- Output directory: `./out`
- (Windows only) Aux directory: `./auxil`
- Ensure required fonts are installed (for this project: Fira Sans)

## Setup Instructions

### Windows

1. Install MiKTeX (enable "install missing packages on-the-fly")
2. Install SumatraPDF
3. Close and reopen PowerShell/IntelliJ so MiKTeX is on PATH

### macOS

1. Install MacTeX
2. Open a new Terminal (ensures `/Library/TeX/texbin` is on PATH)
3. Use Preview or Skim to open PDFs

## Command Line Compilation

### Windows (PowerShell)

From the project root, replace `<main.tex>` with your entry file (e.g., `cv.tex`).

> Output/aux directories will be created automatically if missing.

**Compile with XeLaTeX:**
```powershell
xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out -aux-directory auxil <main.tex>
```

**Compile with LuaLaTeX:**
```powershell
lualatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out -aux-directory auxil <main.tex>
```

**With font installer enabled (MiKTeX only):**
```powershell
lualatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out -aux-directory auxil --enable-installer <main.tex>
```

**For documents with references/TOC, run twice:**
```powershell
xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out -aux-directory auxil <main.tex>
```

**Preview PDF in SumatraPDF:**
```powershell
& "C:\Program Files\SumatraPDF\SumatraPDF.exe" .\out\<main>.pdf
```

--------------------------------
Command line (macOS, Terminal)
--------------------------------
From the project root. Replace <main.tex> with your entry file (e.g., cv.tex).
NOTE: Do not use -aux-directory on macOS (TeX Live doesn’t support it).
Compile (XeLaTeX):
xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out <main.tex>
Compile (LuaLaTeX):
lualatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out <main.tex>
Run twice if you have references/TOC:
xelatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out <main.tex>
Preview PDF with Preview app:
open out/<main>.pdf

## IntelliJ IDEA Setup

### Using the TeXiFy IDEA Plugin

1. Install the "TeXiFy IDEA" plugin
2. Open the project in IntelliJ
3. Right-click `<main.tex>` → Run (creates a Run Configuration), or create it manually
4. In the LaTeX Run/Debug configuration:
   - **Engine:** XeLaTeX (or LuaLaTeX)
   - **Arguments:** `-file-line-error -interaction=nonstopmode -synctex=1`
   - **Output directory:** `out`
   - **Aux directory** (Windows/MiKTeX only): `auxil`
5. Configure PDF viewer:
   - **Windows:** Set viewer to SumatraPDF (path typically `C:\Program Files\SumatraPDF\SumatraPDF.exe`)
   - **macOS:** Preview or Skim
6. Run the configuration to build; PDF should open automatically

## Troubleshooting

| Problem | Solution |
|---------|----------|
| "fontspec requires XeTeX or LuaTeX" | Switch engine to XeLaTeX or LuaLaTeX |
| MiKTeX asks to install missing packages | Allow the installation |
| "Security risk: running with elevated privileges" | Build without Administrator rights |
| PATH issues | Restart PowerShell/Terminal/IntelliJ after installing MiKTeX/MacTeX |
| "The font 'X' cannot be found" | Install the missing font on your system or use `--enable-installer` with MiKTeX |
| Font installation on Windows | Install fonts in Windows by downloading them and right-clicking → Install, or use MiKTeX's Font Manager |
| Font installation on macOS | Install fonts using Font Book app or by copying to `/Library/Fonts/` or `~/Library/Fonts/` |