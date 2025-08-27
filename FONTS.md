# Font Installation Guide

This document uses custom fonts that need to be installed on your system. The main font used is **Fira Sans**.

## Installing Fira Sans

### Windows

1. Download Fira Sans from [Google Fonts](https://fonts.google.com/specimen/Fira+Sans) or [Mozilla's GitHub repository](https://github.com/mozilla/Fira)
2. Extract the ZIP file
3. Select all the .ttf files, right-click and select "Install"
4. Restart MiKTeX or your LaTeX editor

### macOS

1. Download Fira Sans from [Google Fonts](https://fonts.google.com/specimen/Fira+Sans) or [Mozilla's GitHub repository](https://github.com/mozilla/Fira)
2. Extract the ZIP file
3. Double-click each font file and click "Install Font" in the Font Book preview
4. Alternatively, copy all .ttf files to `~/Library/Fonts/`

### Using MiKTeX Font Installer

If you're using MiKTeX on Windows, you can enable the font installer which will attempt to download missing fonts automatically:

```powershell
lualatex -file-line-error -interaction=nonstopmode -synctex=1 -output-directory out -aux-directory auxil --enable-installer <main.tex>
```

## Alternative: Changing the Font in the Document

If you don't want to install Fira Sans, you can modify the CV document to use a font that's already on your system:

1. Open `cv.tex`
2. Find this line (around line 53):
   ```latex
   \setmainfont{Fira Sans}
   ```
3. Change it to use a font you already have installed, for example:
   ```latex
   \setmainfont{Arial}
   ```
   or
   ```latex
   \setmainfont{Helvetica}
   ```

## Checking Available Fonts

### Windows

To see what fonts are available to XeLaTeX/LuaLaTeX on your system:

1. Run the following command in PowerShell:
   ```powershell
   fc-list : family | Sort-Object
   ```

### macOS

To see what fonts are available to XeLaTeX/LuaLaTeX on your system:

1. Run the following command in Terminal:
   ```bash
   fc-list : family | sort
   ```

The output will show all font families that can be used with the `\setmainfont` command.
