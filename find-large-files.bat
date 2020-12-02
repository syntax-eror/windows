REM replace 100000000 with file size in bytes
FOR /R C:\ %i in (*) do @if %~zi gtr 100000000 echo %i %~zi
