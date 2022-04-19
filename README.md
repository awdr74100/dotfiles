# Yi-Ru's dotfiles

My personal dotfiles.

## Contents

- [Using Scoop on Windows](#using-scoop-on-windows)
  - [Nerd Fonts Setup](#nerd-fonts-setup)
  - [Windows Terminal Setup](#windows-terminal-setup)
  - [PowerShell Setup](#powershell-setup)
  - [Git Setup](#git-setup)

## Using Scoop on Windows

> [Scoop](https://github.com/ScoopInstaller/Scoop) is a command-line installer for Windows.

Run the following command from your PowerShell to install scoop to its default location (`~\scoop`):

```powershell
iwr -useb get.scoop.sh | iex
```

Utilize [aria2](https://github.com/aria2/aria2) to use multi-connection downloads:

```powershell
scoop update && scoop install aria2
```

### Nerd Fonts Setup

> [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) is a project that patches developer targeted fonts with a high number of glyphs (icons).

Add scoop official Nerd Fonts bucket:

```powershell
scoop bucket add nerd-fonts
```

Download the fonts you want to install:

```powershell
scoop install FiraCode-NF-Mono
```

At present, Nerd Fonts has come to v2.2.0-RC version, scoop does not support the download and installation of pre-release state, but can be manually implemented instead:

```powershell
aria2c https://github.com/ryanoasis/nerd-fonts/releases/download/2.2.0-RC/FiraCode.zip
```

### Windows Terminal Setup

> [Windows Terminal](https://github.com/microsoft/terminal) is usually provided with Windows. Please confirm whether you need to download it.

Install the Windows Terminal from the [Microsoft Store](https://aka.ms/terminal), or via [winget](https://github.com/microsoft/winget-cli):

```powershell
winget install --id=Microsoft.WindowsTerminal -e
```

Copy the contents of file (`config\terminal\settings.json`) to the following location file:

> Or open the Settings tab, and the bottom left corner will have a button named "Open JSON file".

```powershell
vi $env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
```

### PowerShell Setup

> Use the more powerful [PowerShell Core](https://github.com/PowerShell/PowerShell) instead of the [Windows PowerShell](https://aka.ms/wmf5download) built into the system.

Add scoop official extras bucket:

```powershell
scoop bucket add extras
```

Download the packages on the list:

- [gsudo](https://github.com/gerardog/gsudo) - A Sudo for Windows
- [z](https://github.com/badmotorfinger/z) - A new cd command that helps you navigate faster by learning your habits
- [fzf](https://github.com/junegunn/fzf) - A command-line fuzzy finder
- [psfzf](https://github.com/kelleyma49/PSFzf) - A PowerShell wrapper around the fzf
- [posh-git](https://github.com/dahlbyk/posh-git) - A PowerShell environment for Git
- [oh-my-posh](https://github.com/JanDeDobbeleer/oh-my-posh) - A prompt theme engine for any shell
- [terminal-icons](https://github.com/devblackops/Terminal-Icons) - A PowerShell module to show file and folder icons in the terminal

```powershell
scoop install gsudo z fzf psfzf posh-git oh-my-posh terminal-icons
```

Copy the contents of file (`config\powershell\Microsoft.PowerShell_profile.ps1`) to the following location file:

```powershell
vi $PROFILE.CurrentUserCurrentHost
```

Don't forget to put the oh-my-posh theme file (`config\powershell\.ompconfig.json`) in the root directory:

```powershell
vi ~\.ompconfig
```

Reload your profile for the changes to take effect:

```powershell
. $PROFILE.CurrentUserCurrentHost
```

### Git Setup

> [Git](https://github.com/git-for-windows/git) is a fast, scalable, distributed revision control system.

Download git from scoop main bucket:

```powershell
scoop install git
```

Copy the contents of file (`config\git\.gitconfig`) to the following location file:

```powershell
vi ~\.gitconfig
```
