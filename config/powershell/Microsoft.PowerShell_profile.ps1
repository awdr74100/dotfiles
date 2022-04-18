# Encoding
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Modules
Import-Module -Name PSReadLine
Import-Module -Name PSFzf
Import-Module -Name Terminal-Icons
Import-Module -Name posh-git
Import-Module -name z

Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

$OMP_Config = Join-Path -Path $HOME -ChildPath '.ompconfig.json'
oh-my-posh init pwsh --config $OMP_Config | Invoke-Expression

# Aliases
Set-Alias -Name which -Value where.exe
