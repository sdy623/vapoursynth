cd %SRC_DIR%
rmdir /s /q build
del vapoursynth.*.pyd
del /q dist\*.whl
%PREFIX%\python.exe setup.py build_ext --inplace
%PREFIX%\python.exe setup.py bdist_wheel
