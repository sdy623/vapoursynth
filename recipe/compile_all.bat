@echo | call install_deps.bat

pushd %SRC_DIR%\installer
rem call setmvscvars.bat
popd

CALL "%ProgramFiles%\Microsoft Visual Studio\2022\Community\Common7\Tools\VsDevCmd.bat" -startdir=none -arch=x64 -host_arch=x64
pushd %SRC_DIR%\msvc_project

FOR /F "tokens=*" %%g IN ('python.exe -c "import sys; import os; print(os.path.dirname(sys.executable))"') DO SET VSPYTHON_PATH=%%g

msbuild VapourSynth.sln -m /t:Clean;Build /p:Configuration=Release /p:Platform=x64 /p:CurrentVersion=%CURRENT_VERSION%

popd

@echo | call docs_build.bat
@echo | call cython_build.bat

set SKIP_COMPRESS="1"
pushd %SRC_DIR%\installer
@echo | call make_portable.bat
@echo | call make_installers.bat
popd