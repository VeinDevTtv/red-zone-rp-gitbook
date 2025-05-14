@echo off
echo ========================================
echo Red Zone RP Documentation Deployment Tool
echo ========================================
echo.

REM Set repository information (update these values with your GitHub username)
SET GITHUB_USERNAME=VeinDevTtv
SET REPO_NAME=red-zone-rp-gitbook
SET BRANCH=gh-pages

echo Setting up environment...
IF NOT EXIST _site (
    mkdir _site
) ELSE (
    echo Cleaning previous build...
    rmdir /S /Q _site
    mkdir _site
)

echo.
echo Converting Markdown files to HTML using Pandoc...
echo.

REM Process main markdown files
for %%f in (*.md) do (
    echo Processing %%f...
    pandoc "%%f" -o "_site\%%~nf.html" --standalone --metadata title="Red Zone RP - %%~nf"
)

REM Process subdirectories
for /D %%d in (*) do (
    if not "%%d"=="_site" if not "%%d"==".git" (
        echo Processing directory: %%d
        
        REM Create the directory in _site if it doesn't exist
        if not exist "_site\%%d" mkdir "_site\%%d"
        
        REM Process markdown files in the subdirectory
        for %%f in (%%d\*.md) do (
            echo Processing %%f...
            pandoc "%%f" -o "_site\%%~dpnf.html" --standalone --metadata title="Red Zone RP - %%~nf"
        )
    )
)

echo.
echo Creating simple CSS for better appearance...
echo.

REM Create a basic CSS file for styling
echo /* Red Zone RP Documentation Styles */ > _site\styles.css
echo body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; line-height: 1.6; margin: 0; padding: 20px; max-width: 900px; margin: 0 auto; color: #333; } >> _site\styles.css
echo h1, h2, h3, h4, h5, h6 { color: #e63946; margin-top: 1.5em; } >> _site\styles.css
echo h1 { border-bottom: 2px solid #e63946; padding-bottom: 10px; } >> _site\styles.css
echo a { color: #457b9d; text-decoration: none; } >> _site\styles.css
echo a:hover { text-decoration: underline; } >> _site\styles.css
echo pre, code { background-color: #f1faee; border-radius: 4px; padding: 2px 5px; } >> _site\styles.css
echo pre { padding: 10px; overflow-x: auto; } >> _site\styles.css
echo blockquote { border-left: 4px solid #e63946; padding-left: 20px; margin-left: 0; color: #555; } >> _site\styles.css
echo table { border-collapse: collapse; width: 100%%; } >> _site\styles.css
echo th, td { padding: 12px; text-align: left; border-bottom: 1px solid #ddd; } >> _site\styles.css
echo tr:hover { background-color: #f5f5f5; } >> _site\styles.css
echo .task-list-item { list-style-type: none; } >> _site\styles.css
echo .task-list-item-checkbox { margin-right: 10px; } >> _site\styles.css
echo nav { background-color: #1d3557; padding: 10px; border-radius: 5px; margin-bottom: 20px; } >> _site\styles.css
echo nav a { color: white; margin-right: 15px; } >> _site\styles.css

REM Create a simple index.html that redirects to README.html
echo ^<!DOCTYPE html^> > _site\index.html
echo ^<html^> >> _site\index.html
echo ^<head^> >> _site\index.html
echo   ^<meta http-equiv="refresh" content="0; url=README.html"^> >> _site\index.html
echo   ^<link rel="stylesheet" href="styles.css"^> >> _site\index.html
echo   ^<title^>Red Zone RP Documentation^</title^> >> _site\index.html
echo ^</head^> >> _site\index.html
echo ^<body^>^</body^> >> _site\index.html
echo ^</html^> >> _site\index.html

echo.
echo Initializing Git repository in _site...
echo.

cd _site
git init
git add .
git commit -m "Deploy Red Zone RP documentation to GitHub Pages"

echo.
echo Pushing to GitHub Pages (%GITHUB_USERNAME%/%REPO_NAME% branch: %BRANCH%)...
echo.

git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
git push -f origin master:%BRANCH%

echo.
echo ========================================
echo Deployment complete!
echo.
echo Your documentation is now live at:
echo https://%GITHUB_USERNAME%.github.io/%REPO_NAME%/
echo.
echo NOTE: Please replace YOUR_USERNAME in this script
echo with your actual GitHub username before running.
echo ========================================
echo.

cd ..
pause 