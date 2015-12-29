
I built a basic Dockerfile that would use PowerShell and OneGet
to install Python 2.7 x86 from Chocolatey. A basic "Hello World" script works
but running Python.exe interactively fails whenever it tries to format 
text for the pseudo-TTY.


Steps to build the image:
```
git clone https://github.com/PatrickLang/Docker-Experiments.git
docker build -t pythondev .
docker run -it pythondev cmd
```

Example running script in container:
```
Microsoft Windows [Version 10.0.10586]
(c) 2016 Microsoft Corporation. All rights reserved.

C:\Windows\system32>c:\Python27\python.exe c:\SetupScripts\HelloWorld.py
Hello World
```

Example running interactively in container:
```
C:\Windows\system32c:\Python27\python.exe
Python 2.7.11 (v2.7.11:6d1b6a68f775, Dec  5 2015, 20:32:19) [MSC v.1500 32 bit (Intel)] on win32
Type "help", "copyright", "credits" or "license" for more information.
>>> help

LookupError: unknown encoding: cp65001
>>>
```

It looks like this encoding was added to Python 3.3 - see [Issue 13216](https://bugs.python.org/issue13216)
