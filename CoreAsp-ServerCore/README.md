This is based off the [Getting Started example](https://docs.asp.net/en/1.0.0-rc2/getting-started.html) for Core Asp.net.


## Build
```
dotnet restore
```

## Run
```
dotnet publish -o .containerbuild
```

## Build Container
```
docker build -t hello .
```

## Run Container
```
docker run -p 5001:5001 -it hello
```
