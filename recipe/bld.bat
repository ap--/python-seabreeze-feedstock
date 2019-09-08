@echo on

if "%PY3K%" == "1" goto installpy3
:: seabreeze needs windows driver kit 7 on python 2.7 (preinstalled on appveyor)
"%PYTHON%" -m pip install . --no-deps --no-build-isolation -vv --global-option=build_ext ^
 --global-option="-Ic:/WinDDK/7600.16385.1/inc/api;c:/WinDDK/7600.16385.1/inc/ddk" ^
 --global-option="-Lc:/WinDDK/7600.16385.1/lib/wlh/amd64"
goto end

:installpy3
"%PYTHON%" -m pip install . --no-deps --no-build-isolation -vv
:end
