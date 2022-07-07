# Prompt
Import-Module posh-git
Import-Module oh-my-posh

#Set-Themes
Set-PoshPrompt atomic

#Terminal-Icons
Import-Module -Name Terminal-Icons

#PSReadlineOptions
(Get-PSReadlineOption).HistorySavePath
set-PSReadLineOption -PredictionSource History
set-PSReadLineOption -PredictionViewStyle Listview
set-PSReadLineOption -EditMode Emacs
set-PSReadLineOption -BellStyle None

# Alias
Set-alias vim nvim
Set-alias ll ls 

#Clear
clear

#Neofetch
neofetch