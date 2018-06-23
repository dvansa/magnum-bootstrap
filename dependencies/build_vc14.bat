@echo off
net session>nul 2>&1
if %ERRORLEVEL% equ 0 (
    echo Administrator OK
) ELSE (
    
    goto :ERROREND
)

@echo on

:: Create build dir
mkdir build 2>NUL
cd build

:: VS2014 env
CALL "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat" x64

:: Build
cmake -G "Visual Studio 14 2015" ..
msbuild /p:configuration=Debug /p:platform=Win32 Dependencies.sln
msbuild /p:configuration=Debug /p:platform=Win32 INSTALL.vcxproj

goto :END

:ERROREND
echo Admin privileges are required

:END

