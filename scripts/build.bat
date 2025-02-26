@echo off
setlocal

:: Set vcpkg path (modify this based on your vcpkg installation)
set VCPKG_PATH=C:\Tools\vcpkg

:: Set build directory
set BUILD_DIR=build

:: Delete old build directory if exists
if exist %BUILD_DIR% rmdir /s /q %BUILD_DIR%

:: Run CMake with vcpkg toolchain and force Release mode
cmake -DCMAKE_TOOLCHAIN_FILE=%VCPKG_PATH%\scripts\buildsystems\vcpkg.cmake -DCMAKE_BUILD_TYPE=Release -B %BUILD_DIR%

:: Build the project in Release mode
cmake --build %BUILD_DIR% --config Release

:: Run the chat server from Release folder
echo Starting Chat Server...
cd %BUILD_DIR%/Release
ChatHive.exe

endlocal
pause