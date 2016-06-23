This is based off the [Getting Started example](https://docs.asp.net/en/1.0.0-rc2/getting-started.html) for Core Asp.net.

## Prerequisites

### Install 1.0.0-preview1 sdk on your laptop
```
Invoke-WebRequest https://go.microsoft.com/fwlink/?LinkID=798398 -outfile DotNetCore.1.0.0.RC2-SDK.Preview1-x64.exe
.\DotNetCore.1.0.0.RC2-SDK.Preview1-x64.exe
```


## Build .net core container image for server core
```
mkdir dotnet-docker
wget https://raw.githubusercontent.com/PatrickLang/dotnet-docker/windowsImages/1.0.0-rc2/windowsservercore/x64/core/Dockerfile -outfile dotnet-docker\Dockerfile
$oldwd = pwd
cd dotnet-docker
docker build -t dotnet:1.0.0-rc2 .
cd $oldwd
```

## Build
This will build the sample core asp.net app locally:

```
dotnet restore
dotnet publish -o .containerbuild
```

## Build Container
Now that all the binaries are built, put them into a container image

```
docker build -t hello .
```

## Run Container
Now, run the container
```
docker run -p 5000:5000 -it hello
```

Currently hitting error:
```
Unhandled Exception: System.Runtime.InteropServices.SEHException: External component has thrown an exception.
   at Interop.mincore.IsNormalizedString(Int32 normForm, String source, Int32 length)
   at System.StringNormalizationExtensions.IsNormalized(String value, NormalizationForm normalizationForm)
   at Microsoft.AspNetCore.Server.Kestrel.Http.PathNormalizer.NormalizeToNFC(String path)
   at Microsoft.AspNetCore.Server.Kestrel.ServerAddress.FromUrl(String url)
   at Microsoft.AspNetCore.Server.Kestrel.KestrelServer.Start[TContext](IHttpApplication`1 application)
   at Microsoft.AspNetCore.Hosting.Internal.WebHost.Start()
   at Microsoft.AspNetCore.Hosting.WebHostExtensions.Run(IWebHost host, CancellationToken token, String shutdownMessage)
   at Microsoft.AspNetCore.Hosting.WebHostExtensions.Run(IWebHost host)
   at aspnetcoreapp.Program.Main(String[] args)
```