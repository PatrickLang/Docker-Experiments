FROM windowsservercore
ADD https://go.microsoft.com/fwlink/?LinkID=798402 c:\dotnetsdk.zip
RUN powershell.exe Expand-Archive c:\dotnetsdk.zip -DestinationPath c:\dotnetsdk
RUN c:\dotnetsdk\dotnet.exe restore
