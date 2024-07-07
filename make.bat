@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=build

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

if "%1" == "" goto help
if "%1" == "html" goto html
if "%1" == "clean" goto clean

Rem allow other commands to pass directly
%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:html
REM Cleaning docs prior to build
echo Removing everything under 'docs'
rmdir /S /Q "docs"
mkdir "docs

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
REM Copy the build to a top level docs for github pages compatability
xcopy build\html\ docs\ /q /s /y
REM Copy the .nojekyll file to prevent github attempting to run jekyll on the site
echo Copying .nojekyll to docs
copy source\.nojekyll docs\

REM Copy the CNAME for custom domain
echo Copying CNAME to docs
copy source\CNAME docs\

goto end

:clean
REM Cleaning docs prior to build
echo Removing everything under 'docs'
rmdir /S /Q "docs"
mkdir "docs

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

goto end

:help
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:end
popd
