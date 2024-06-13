@ setlocal enableextensions 
@ cd /d "%~dp0"

for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Allowed: %%f" dir=in program="%%f" action=allow
  netsh advfirewall firewall add rule name="Allowed: %%f" dir=out program="%%f" action=allow

)
pause