# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt atomic

# Alias
Set-alias vim nvim
Set-alias g git 

#Clear
clear

Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Console" -Name "FaceName" -Value "Hack NF" -Type String;
