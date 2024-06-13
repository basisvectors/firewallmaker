# Firewall Maker


put this bat file in whatever program installation dir you want to stop from accessing the internet.
run as administrator. 

this gets every exe in the folder and its subdirectories and adds a new rule to block it.

tested on win 11, though i think it should work on 10 as well.

[right click and choose save link as](https://github.com/basisvectors/firewallmaker/raw/main/block.bat)

source: [TCNO/TroubleChute](https://www.youtube.com/watch?v=4AH4SV7bGN0)

```batch
@ setlocal enableextensions 
@ cd /d "%~dp0"

for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Blocked: %%f" dir=in program="%%f" action=block
  netsh advfirewall firewall add rule name="Blocked: %%f" dir=out program="%%f" action=block

)
pause
```