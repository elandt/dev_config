# Prompt
Import-Module posh-git

# Oh My Posh
function Get-ScriptDirectory { Split-Path $MyInvocation.ScriptName }
$PROMPT_CONFIG = Join-Path (Get-ScriptDirectory) 'takuya-modded.omp.json'
oh-my-posh --init --shell pwsh --config $PROMPT_CONFIG | Invoke-Expression

# Icons
Import-Module -Name Terminal-Icons

# PSReadline
# Set-PSReadLineOption -EditMode Emacs
# Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'

# Git Aliases
function Get-GitStatus () { git status }
Set-Alias -Name gs -Value Get-GitStatus
function Get-GitAdd { git add $args }
Set-Alias -Name ga -Value Get-GitAdd
function Get-GitCheckout { git checkout $args }
Set-Alias -Name gco -Value Get-GitCheckout
function Get-GitCheckoutDevelop { git checkout develop }
Set-Alias -Name gcod -Value Get-GitCheckoutDevelop
function Get-GitCheckoutMaster { git checkout master }
Set-Alias -Name gcom -Value Get-GitCheckoutMaster

# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue |
    	Select-Object -ExpandProperty Path -ErrorAction Silentlycontinue
}
