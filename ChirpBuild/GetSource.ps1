Install-Package hg -Force #This is on chocolatey
cd /
hg clone http://d-rats.com/hg/chirp.hg

# To build:
# cd C:\chirp.hg
# c:\Python27\python.exe setup.py py2exe
# Currently failing on a cairo dependency
# Traceback (most recent call last):
#   File "setup.py", line 168, in <module>
#     win32_build()
#   File "setup.py", line 77, in win32_build
#     options=opts)
#   File "c:\Python27\lib\distutils\core.py", line 151, in setup
#     dist.run_commands()
#   File "c:\Python27\lib\distutils\dist.py", line 953, in run_commands
#     self.run_command(cmd)
#   File "c:\Python27\lib\distutils\dist.py", line 972, in run_command
#     cmd_obj.run()
#   File "c:\Python27\lib\site-packages\py2exe\build_exe.py", line 241, in run
#     self._run()
#   File "c:\Python27\lib\site-packages\py2exe\build_exe.py", line 294, in _run
#     self.find_needed_modules(mf, required_files, required_modules)
#   File "c:\Python27\lib\site-packages\py2exe\build_exe.py", line 1297, in find_needed_modules
#     mf.import_hook(mod)
#   File "c:\Python27\lib\site-packages\py2exe\mf.py", line 719, in import_hook
#     return Base.import_hook(self,name,caller,fromlist,level)
#   File "c:\Python27\lib\site-packages\py2exe\mf.py", line 136, in import_hook
#     q, tail = self.find_head_package(parent, name)
#   File "c:\Python27\lib\site-packages\py2exe\mf.py", line 204, in find_head_package
#     raise ImportError, "No module named " + qname
# ImportError: No module named cairo
