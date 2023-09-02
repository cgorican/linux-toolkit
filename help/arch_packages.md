# Arch Packages

## Manually install packages using makepkg

_Typically used in conjunction with the Arch Linux package manager `pacman`._

Example:

```sh
# Clone teams arch git repository (PKGBUILD)
git clone https://aur.archlinux.org/teams.git .
# Build package using makepkg and install using -si option
makepkg -si
# See also: https://aur.archlinux.org/packages/teams/
```

## Using the yay package manager to install aur packages

```sh
yay -S <PACKAGE_NAME>
```

### Installing yay

```sh
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
