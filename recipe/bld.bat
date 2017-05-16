REM prepare the environment
cd extra\libseabreeze\SeaBreeze
if %ARCH% == 32 (
  set WDDKSBPATH="C:\\WinDDK\\7600.16385.1\\lib\\wxp\\i386"
) else (
  set WDDKSBPATH="C:\\WinDDK\\7600.16385.1\\lib\\wlh\\amd64"
)
if %VS_MAJOR% == 9 (
  REM py27
  set VISUALSTUDIO_PROJ=VisualStudio2008
) else (
  REM py35 py36
  set VISUALSTUDIO_PROJ=VisualStudio2015
)
set SB_ARCH=%ARCH%
set SB_DEBUG=0

REM compile the library
make lib/Seabreeze.dll
if errorlevel 1 exit 1
cp lib\SeaBreeze.dll %LIBRARY_BIN%
cp lib\SeaBreeze.lib %LIBRARY_LIB%
cd ../../..

REM compile and install the python module
"%PYTHON%" setup.py build_ext --library-dirs="%LIBRARY_LIB%;%WDDKSBPATH%"
if errorlevel 1 exit 1
"%PYTHON%" setup.py build
if errorlevel 1 exit 1
"%PYTHON%" setup.py install --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
