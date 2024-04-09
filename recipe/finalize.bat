@echo off
setlocal

set "SOURCE_DIR=%SRC_DIR%\installer\buildp64"
set "DEST_DIR=%PREFIX%"

:: 创建目标目录，如果不存在
if not exist "%DEST_DIR%" mkdir "%DEST_DIR%"

:: 复制目录
xcopy "%SOURCE_DIR%\sdk" "%DEST_DIR%\sdk" /E /I /Y
xcopy "%SOURCE_DIR%\vapoursynth64" "%DEST_DIR%\vapoursynth64" /E /I /Y
xcopy "%SOURCE_DIR%\vsgenstubs4" "%DEST_DIR%\vsgenstubs4" /E /I /Y

@echo off
setlocal

set "SOURCE_DIR=%SRC_DIR%\installer\buildp64"
set "DEST_DIR=%PREFIX%"

:: 创建目标目录，如果不存在
if not exist "%DEST_DIR%" mkdir "%DEST_DIR%"

:: 复制目录
xcopy "%SOURCE_DIR%\doc" "%DEST_DIR%\doc" /E /I /Y
xcopy "%SOURCE_DIR%\sdk" "%DEST_DIR%\sdk" /E /I /Y
xcopy "%SOURCE_DIR%\vapoursynth64" "%DEST_DIR%\vapoursynth64" /E /I /Y
xcopy "%SOURCE_DIR%\vsgenstubs4" "%DEST_DIR%\vsgenstubs4" /E /I /Y

:: 复制文件
copy "%SOURCE_DIR%\7z.dll" "%DEST_DIR%\7z.dll" /Y
copy "%SOURCE_DIR%\7z.exe" "%DEST_DIR%\7z.exe" /Y
copy "%SOURCE_DIR%\AVFS.exe" "%DEST_DIR%\AVFS.exe" /Y
copy "%SOURCE_DIR%\concrt140.dll" "%DEST_DIR%\concrt140.dll" /Y
copy "%SOURCE_DIR%\MANIFEST.in" "%DEST_DIR%\MANIFEST.in" /Y
copy "%SOURCE_DIR%\msvcp140_1.dll" "%DEST_DIR%\msvcp140_1.dll" /Y
copy "%SOURCE_DIR%\msvcp140_2.dll" "%DEST_DIR%\msvcp140_2.dll" /Y
copy "%SOURCE_DIR%\msvcp140_atomic_wait.dll" "%DEST_DIR%\msvcp140_atomic_wait.dll" /Y
copy "%SOURCE_DIR%\msvcp140_codecvt_ids.dll" "%DEST_DIR%\msvcp140_codecvt_ids.dll" /Y
copy "%SOURCE_DIR%\msvcp140.dll" "%DEST_DIR%\msvcp140.dll" /Y
copy "%SOURCE_DIR%\pfm-192-vapoursynth-win.exe" "%DEST_DIR%\pfm-192-vapoursynth-win.exe" /Y
copy "%SOURCE_DIR%\portable.vs" "%DEST_DIR%\portable.vs" /Y
copy "%SOURCE_DIR%\setup.py" "%DEST_DIR%\setup.py" /Y
copy "%SOURCE_DIR%\vapoursynth.cp311-win_amd64.pyd" "%DEST_DIR%\vapoursynth.cp311-win_amd64.pyd" /Y
copy "%SOURCE_DIR%\VapourSynth.dll" "%DEST_DIR%\VapourSynth.dll" /Y
copy "%SOURCE_DIR%\vccorlib140.dll" "%DEST_DIR%\vccorlib140.dll" /Y
copy "%SOURCE_DIR%\vcruntime140_1.dll" "%DEST_DIR%\vcruntime140_1.dll" /Y
copy "%SOURCE_DIR%\vcruntime140_threads.dll" "%DEST_DIR%\vcruntime140_threads.dll" /Y
copy "%SOURCE_DIR%\vcruntime140.dll" "%DEST_DIR%\vcruntime140.dll" /Y
copy "%SOURCE_DIR%\vs-detect-python.bat" "%DEST_DIR%\vs-detect-python.bat" /Y
copy "%SOURCE_DIR%\vsgenstubs.py" "%DEST_DIR%\vsgenstubs.py" /Y
copy "%SOURCE_DIR%\VSPipe.exe" "%DEST_DIR%\VSPipe.exe" /Y
copy "%SOURCE_DIR%\vsrepo.py" "%DEST_DIR%\vsrepo.py" /Y
copy "%SOURCE_DIR%\VSScript.dll" "%DEST_DIR%\VSScript.dll" /Y
copy "%SOURCE_DIR%\VSVFW.dll" "%DEST_DIR%\VSVFW.dll" /Y

:end
endlocal