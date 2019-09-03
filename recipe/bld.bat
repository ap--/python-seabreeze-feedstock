SET INCLUDE=%INCLUDE%;%WDDK_INC_PATH%
SET LIB=%LIB%;%WDDK_LIB_PATH%
%PYTHON%\python.exe -m pip install . --no-build-isolation -v
