@rem C:\Users\DUC\scoop\apps\sudo\current\sudo.ps1
@echo off
where /q pwsh.exe
if %errorlevel% equ 0 (
    pwsh -noprofile -ex unrestricted -file "C:\Users\DUC\scoop\apps\sudo\current\sudo.ps1"  %*
) else (
    powershell -noprofile -ex unrestricted -file "C:\Users\DUC\scoop\apps\sudo\current\sudo.ps1"  %*
)
