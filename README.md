# Dev Config

The files within this repo are the config files for how I like my shell/terminal/workspace. Use at your own risk.

## Resources

* Current oh-my-posh theme is modded from: https://github.com/craftzdog/dotfiles-public/blob/master/.config/powershell/takuya.omp.json
* Much of the initial PowerShell profile is comes from Takuya Matsuyama's video: https://youtu.be/5-aK2_WwrmM
  * Oh My Posh can be installed via winget or scoop (and probably other package managers but these are the methods I've used), so no need to import the module for use in PowerShell

## Notes

### Neovim

The init.lua needs to be in the appropriate location for your operating system. Please see the excerpt from `:help init.lua` below:

> The config file is located at:
> 	Unix			~/.config/nvim/init.vim		(or init.lua)
> 	Windows			~/AppData/Local/nvim/init.vim	(or init.lua)
> 	|$XDG_CONFIG_HOME|	$XDG_CONFIG_HOME/nvim/init.vim	(or init.lua)

### Powershell

TBD
