FROM dotnetrc2
ADD https://github.com/aspnet/MusicStore/archive/dev.zip c:\MusicStore.zip
RUN powershell.exe Expand-Archive c:\MusicStore.zip -DestinationPath c:\MusicStore
WORKDIR c:/MusicStore
RUN c:/dotnetsdk/dotnet.exe restore

# This will run on port 5003, logging to console out. This will make it easy to view with 'docker log'
CMD c:/dotnetsdk/dotnet.exe . run