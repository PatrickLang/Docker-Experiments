I found bits at [AppVeyor for Docker Compose project](https://ci.appveyor.com/project/docker/compose), and decided to download them as-is:
```powershell
wget https://ci.appveyor.com/api/buildjobs/5r9tqabjuus01cc9/artifacts/dist/docker-compose-Windows-x86_64.exe -OutFile docker-compose.exe
```

This demo is simple, and just launches an IIS web server with a fun home page. Once an IP address is obtained, it will be dumped to the TTY where it's easy to find.

Docker-Compose can be used to easily scale it up,
```
.\docker-compose.exe scale web=4
```

then view the status
```
PS C:\composedemo> .\docker-compose.exe ps
      Name                     Command               State   Ports
------------------------------------------------------------------
composedemo_web_1   cmd /S /C powershell.exe - ...   Up
composedemo_web_2   cmd /S /C powershell.exe - ...   Up
composedemo_web_3   cmd /S /C powershell.exe - ...   Up
composedemo_web_4   cmd /S /C powershell.exe - ...   Up
```

Look at the logs to get the IP address.
```
docker logs composedemo_web_3

Windows PowerShell
Copyright (C) 2015 Microsoft Corporation. All rights reserved.



IPAddress         : 10.0.0.247
InterfaceIndex    : 167
InterfaceAlias    : vEthernet (WiredEthernet-b642d454f03668207cfdaf8a2be6136103
                    1034ad9d7f541d18133d661d32e143-0)
AddressFamily     : IPv4
Type              : Unicast
PrefixLength      : 24
PrefixOrigin      : Dhcp
SuffixOrigin      : Dhcp
AddressState      : Preferred
ValidLifetime     : 23:59:43
PreferredLifetime : 23:59:43
SkipAsSource      : False
PolicyStore       : ActiveStore
```

Then connect to your web server(s)