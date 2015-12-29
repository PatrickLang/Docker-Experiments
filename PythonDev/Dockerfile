FROM windowsservercore
ADD InstallPython.ps1 /SetupScripts/InstallPython.ps1
ADD HelloWorld.py /SetupScripts/HelloWorld.py
RUN powershell -executionpolicy bypass C:\SetupScripts\InstallPython.ps1 -RunNative