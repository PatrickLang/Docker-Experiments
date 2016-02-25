FROM windowsservercore
RUN powershell.exe invoke-webrequest https://download.microsoft.com/download/3/8/E/38EE4758-7C31-4D96-8FF9-83CC313F0F78/VisualCppBuildTools_Full.exe -Outfile c:\VisualCppBuildTools_Full.exe
RUN start /wait C:\VisualCppBuildTools_Full.exe /Q /norestart /l c:\install.log /norefresh /norestart
