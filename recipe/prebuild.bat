copy %RECIPE_DIR%\compile_all.bat %SRC_DIR%\compile_all.bat
copy %RECIPE_DIR%\cython_build.bat %SRC_DIR%\cython_build.bat
copy %RECIPE_DIR%\docs_build.bat %SRC_DIR%\docs_build.bat
copy %RECIPE_DIR%\install_deps.bat %SRC_DIR%\install_deps.bat

copy %RECIPE_DIR%\finalize.bat %SRC_DIR%\finalize.bat
copy %RECIPE_DIR%\run_tests.py %SRC_DIR%\run_tests.py

CALL %SRC_DIR%\compile_all.bat
%PREFIX%\python.exe -m pip install . -vv
CALL %SRC_DIR%\finalize.bat