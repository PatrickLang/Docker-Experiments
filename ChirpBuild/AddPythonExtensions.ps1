
# This is attempting to install all of the Python extensions required for CHIRP
#   See: http://chirp.danplanet.com/projects/chirp/wiki/DevelopersWin32Environment
# Precompiled extensions found at http://www.lfd.uci.edu/~gohlke/pythonlibs/

$packages = "http://www.lfd.uci.edu/~gohlke/pythonlibs/zpx9vnfu/pygtk-2.22.0-cp27-none-win32.whl",
            "http://www.lfd.uci.edu/~gohlke/pythonlibs/zpx9vnfu/pycairo_gtk-1.10.0-cp27-none-win32.whl",
            "http://www.lfd.uci.edu/~gohlke/pythonlibs/zpx9vnfu/pygobject-2.28.6-cp27-none-win32.whl",
            "http://www.lfd.uci.edu/~gohlke/pythonlibs/zpx9vnfu/libxml2_python-2.9.3-cp27-none-win32.whl",
            "http://www.lfd.uci.edu/~gohlke/pythonlibs/zpx9vnfu/pywin32-219-cp27-none-win32.whl", #TODO: ? Required to run `python.exe Scripts\pywin32_postinstall.py -install` from an elevated command prompt. 
            "http://www.lfd.uci.edu/~gohlke/pythonlibs/zpx9vnfu/pyserial-2.7-py2-none-any.whl",
            "http://www.lfd.uci.edu/~gohlke/pythonlibs/zpx9vnfu/py2exe-0.6.10a1-cp27-none-win32.whl"

$MyInvocation.MyCommand.Path | Split-Path | Push-Location 

# Download and install each extension
$packages | foreach-object {
    #Start-BitsTransfer : The operation being requested was not performed because
    #the user has not logged on to the network. The specified service does not
    #exist. (Exception from HRESULT: 0x800704DD)
    #Start-BitsTransfer $_
    $filename = $_ | Split-Path -Leaf
    Write-Host "Downloading $filename from $_"
    Invoke-WebRequest $_ -OutFile $filename
    c:\python27\scripts\pip.exe install $filename
}

# C:\Python27>python.exe Scripts\pywin32_postinstall.py -install
# Traceback (most recent call last):
#   File "Scripts\pywin32_postinstall.py", line 613, in <module>
#     install()
#   File "Scripts\pywin32_postinstall.py", line 339, in install
#     print "Copied %s to %s" % (base, dst)
#   File "Scripts\pywin32_postinstall.py", line 17, in write
#     self.f.write(what.replace("\n", "\r\n"))
# LookupError: unknown encoding: cp65001

# TODO: if py2exe extension doesn't work, dig into this ZIP. The EXE is a dist package that doesn't support unattended install
#$py2exeUrl = "http://ufpr.dl.sourceforge.net/project/py2exe/py2exe/0.6.9/py2exe-0.6.9.zip"
