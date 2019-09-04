IF "%PY3K%" EQU "0" (
    SET INCLUDE=%INCLUDE%;C:\WinDDK\7600.16385.1\inc\api;C:\WinDDK\7600.16385.1\inc\ddk;
    SET LIB=%LIB%;C:\WinDDK\7600.16385.1\lib\wxp\i386;
)
%PYTHON%\python.exe -m pip install .[pyseabreeze] --no-build-isolation -v
