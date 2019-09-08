setlocal

if not "%PY3K%" == "0" goto install
:: seabreeze needs windows driver kit 7 on python 2.7
set INCLUDE=%INCLUDE%;C:\WinDDK\7600.16385.1\inc\api;C:\WinDDK\7600.16385.1\inc\ddk;
set LIB=%LIB%;C:\WinDDK\7600.16385.1\lib\wxp\i386;

:install
"%PYTHON%" -m pip install . --no-deps --no-build-isolation -vv
