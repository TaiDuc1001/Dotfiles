# C:\Users\DUC\scoop\apps\sudo\current\sudo.ps1
$path = Join-Path $PSScriptRoot "..\apps\sudo\current\sudo.ps1"
if ($MyInvocation.ExpectingInput) { $input | & $path  @args } else { & $path  @args }
exit $LASTEXITCODE
