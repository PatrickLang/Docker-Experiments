This relies on [patricklang/dotnetrc2](../DotNetRC2/Readme.md)

And uses it to build the Music Store sample. See: [GitHub project page](https://github.com/aspnet/MusicStore)

## Build It
```
docker build -t musicstore:latest .
```

Running dotnet restore currently fails the docker commit step. Under investigation.
```
Installed:
    238 package(s) to C:\MusicStore\MusicStore-dev\src\MusicStore\project.json
    304 package(s) to C:\MusicStore\MusicStore-dev\src\MusicStore.Standalone\project.json
    34 package(s) to C:\MusicStore\MusicStore-dev\test\MusicStore.Test\project.json
    37 package(s) to C:\MusicStore\MusicStore-dev\test\E2ETests\project.json
hcsshim::ImportLayer failed in Win32: The filename or extension is too long. (0xce) layerId=\\?\C:\ProgramData\docker\wi
ndowsfilter\5b8990fa8302b36fcfc84129043312f7aacbe8f8092cdf2240512f0e6813d1ea flavour=1 folder=C:\Windows\TEMP\hcs9816539
77
```
