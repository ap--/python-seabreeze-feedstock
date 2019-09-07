setlocal EnableDelayedExpansion

:: python27 requires windows driver kit 7
if "%PY3K%" equ "0" (
    set INCLUDE=%INCLUDE%;C:\WinDDK\7600.16385.1\inc\api;C:\WinDDK\7600.16385.1\inc\ddk;
    set LIB=%LIB%;C:\WinDDK\7600.16385.1\lib\wlh\amd64;
)

:: undo conda-forge setting CI
set CI=true

"%PYTHON%" -m pip install . --no-deps --no-build-isolation -vv
if errorlevel 1 exit 1
