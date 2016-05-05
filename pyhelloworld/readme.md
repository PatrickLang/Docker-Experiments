# Hello World in Python on NanoServer
This is just a really simple example. It uses the microsoft/sample-python:nanoserver sample as a base image, and plops down a simple hello world application.
I wrote it just to confirm that I could pull and run Nano Server images in Windows Server 2016 TP5.

## Build

```
docker build -t pyhelloworld:latest .
```

## Run
```
docker run -it --isolation=hyperv --rm pyhelloworld
```

## Expected Results
```
Hello World!
```