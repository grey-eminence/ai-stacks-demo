@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=.
set BUILDDIR=_build

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


REM Copy documentation files from microservices folders to documentation

copy ..\microservices\edge_video_analytics_microservice\README.md %SOURCEDIR%\guide\microservices\edge_video_analytics_microservice\README.md
copy ..\microservices\edge_video_analytics_microservice\GET_STARTED.md %SOURCEDIR%\guide\microservices\edge_video_analytics_microservice\GET_STARTED.md
copy ..\microservices\edge_video_analytics_microservice\OPENAPI.yml %SOURCEDIR%\guide\microservices\edge_video_analytics_microservice\OPENAPI.yml

REM Copy documentation files from sample applications folders to documentation

copy ..\sample_applications\automated_self_checkout\README.md %SOURCEDIR%\guide\sample_applications\automated_self_checkout\README.md
copy ..\sample_applications\automated_self_checkout\GET_STARTED.md %SOURCEDIR%\guide\sample_applications\automated_self_checkout\GET_STARTED.md

copy ..\sample_applications\pallet_defect_detection\README.md %SOURCEDIR%\guide\sample_applications\pallet_defect_detection\README.md
copy ..\sample_applications\pallet_defect_detection\GET_STARTED.md %SOURCEDIR%\guide\sample_applications\pallet_defect_detection\GET_STARTED.md

copy ..\sample_applications\search_image_by_image\README.md %SOURCEDIR%\guide\sample_applications\search_image_by_image\README.md
copy ..\sample_applications\search_image_by_image\GET_STARTED.md %SOURCEDIR%\guide\sample_applications\search_image_by_image\GET_STARTED.md


%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

copy _static\redirect.html %BUILDDIR%\html\index.html

goto end

:help
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:end
popd
