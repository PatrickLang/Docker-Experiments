FROM pythondev:latest
ADD AddPythonExtensions.ps1 /SetupScripts/AddPythonExtensions.ps1
ADD GetSource.ps1 /SetupScripts/GetSource.ps1
RUN powershell -executionpolicy bypass C:\SetupScripts\AddPythonExtensions.ps1 -RunNative
RUN powershell -executionpolicy bypass C:\SetupScripts\GetSource.ps1 -RunNative