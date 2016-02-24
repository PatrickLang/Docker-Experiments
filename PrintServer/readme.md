This is an experiment in getting a print server set up in a Windows Server Core container.
I haven't finished testing it, but I'm pretty sure it's going to fail. The 'spooler' service
is missing.

Steps:
1. Add role
1. Add drivers
1. Attach printers using LPR
1. Share printers using SMB?

Example steps & articles:
* https://4sysops.com/archives/install-and-manage-a-print-server-in-server-core/
* https://msdn.microsoft.com/en-us/library/windows/hardware/hh706306(v=vs.85).aspx
