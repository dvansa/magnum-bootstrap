CALL "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
msbuild /p:configuration=Debug /p:platform=Win32 Dependencies.sln
msbuild /p:configuration=Debug /p:platform=Win32 INSTALL.vcxproj