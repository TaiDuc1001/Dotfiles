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


#Search with Everything
Set-Alias -Name ev -Value everything

# Alias
Set-alias vim nvim
Set-alias ll ls
function init { cd 'C:\Users\DUC\AppData\Local\nvim' }
function config { cd 'C:\Users\DUC\Documents\Code\Config' }
# Set-alias init.vim init

#Clear console
clear

#Echo DUCKY


echo        "_____________  _______________ ___  __"
echo        "___  __ \_  / / /_  ____/__  //_/ \/ /"
echo        "__  / / /  / / /_  /    __  ,<  __  / "
echo        "_  /_/ // /_/ / / /___  _  /| | _  /  "
echo        "/_____/ \____/  \____/  /_/ |_| /_/   "
echo " "

#No bi loi gi day echo ra mat vai ki tu
<#
echo    ".----------------.  .----------------.  .----------------.  .----------------.  .----------------.  "
echo    "| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |"
echo    "| |  ________    | || | _____  _____ | || |     ______   | || |  ___  ____   | || |  ____  ____  | |"
echo    "| | |_   ___ `.  | || ||_   _||_   _|| || |   .' ___  |  | || | |_  ||_  _|  | || | |_  _||_  _| | |"
echo    "| |   | |   `. \ | || |  | |    | |  | || |  / .'   \_|  | || |   | |_/ /    | || |   \ \  / /   | |"
echo    "| |   | |    | | | || |  | '    ' |  | || |  | |         | || |   |  __'.    | || |    \ \/ /    | |"
echo    "| |  _| |___.' / | || |   \ `--' /   | || |  \ `.___.'\  | || |  _| |  \ \_  | || |    _|  |_    | |"
echo    "| | |________.'  | || |    `.__.'    | || |   `._____.'  | || | |____||____| | || |   |______|   | |"
echo    "| |              | || |              | || |              | || |              | || |              | |"
echo    "| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |"
echo    " '----------------'  '----------------'  '----------------'  '----------------'  '----------------' "
#>
