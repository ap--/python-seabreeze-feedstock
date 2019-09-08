@echo on

if "%PY3K%" == "1" goto installpy3
:: seabreeze needs windows driver kit 7 on python 2.7 (preinstalled on appveyor)
set LIB=%LIBRARY_LIB%;%LIB%;C:\WinDDK\7600.16385.1\lib\wlh\amd64
set LIBPATH=%LIBRARY_LIB%;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%;C:\WinDDK\7600.16385.1\inc\api;C:\WinDDK\7600.16385.1\inc\ddk
"%PYTHON%" -m pip install . --no-deps -vv
goto end

:installpy3
"%PYTHON%" -m pip install . --no-deps --no-build-isolation -vv
:end
