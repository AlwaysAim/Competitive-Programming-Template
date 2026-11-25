@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo [1/4] Building PDF ...
set PATH=C:\texlive\2025\bin\windows;%PATH%
xelatex -interaction=nonstopmode main.tex > build.log 2>&1
xelatex -interaction=nonstopmode main.tex > build.log 2>&1

if not exist main.pdf (
  echo BUILD FAILED - check build.log
  pause
  exit /b 1
)
echo       done.

echo [2/4] Staging ...
git add -A

echo [3/4] Committing ...
git diff --cached --quiet
if errorlevel 1 (
  git commit -m "Update %date% %time%" -q
  echo       committed.
) else (
  echo       nothing changed.
  pause
  exit /b 0
)

echo [4/4] Pushing ...
git push
echo.
echo Finished. https://github.com/AlwaysAim/Competitive-Programming-Template
pause
