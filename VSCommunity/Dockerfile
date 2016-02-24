FROM windowsservercore

# Install Git
RUN powershell.exe invoke-webrequest https://github.com/git-for-windows/git/releases/download/v2.7.1.windows.1/Git-2.7.1-64-bit.exe -Outfile c:\git.exe
RUN C:\git.exe /SILENT /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh"
RUN DEL C:\git.exe

# Install CMake
RUN powershell.exe invoke-webrequest https://cmake.org/files/v3.4/cmake-3.4.3-win32-x86.exe -Outfile c:\cmake.exe
RUN C:\cmake.exe /S
RUN DEL C:\cmake.exe

# Install C++ VS 2015 Community Update 1
RUN powershell.exe invoke-webrequest http://download.microsoft.com/download/5/7/A/57A99666-126E-42FA-8E70-862EDBADD215/vs_community.exe -Outfile c:\vs.exe
RUN C:\vs.exe /q /norestart /InstallSelectableItems NativeLanguageSupport_VC
# TODO: Wait state needed?
RUN DEL C:\vs.exe

RUN setx /M PATH "%PATH%;C:\Program Files\Git\cmd;C:\Program Files (x86)\CMake\bin"