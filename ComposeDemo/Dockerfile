FROM microsoft/iis
ADD webcontent/NinjaCat.png /inetpub/wwwroot
ADD webcontent/index.htm /inetpub/wwwroot
ADD WaitForNet.ps1 /
CMD powershell.exe -ExecutionPolicy Bypass -NoExit -File c:\WaitForNet.ps1

