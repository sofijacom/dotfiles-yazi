<div align="center">
 
 # dotfiles-yazi
 
</div>

<div align="center">
 
_Default yatline_
  
![2025-02-04_21-02](https://github.com/user-attachments/assets/d0faca58-fac3-44d3-83ac-3b177d4d5722)

</div>
 
<div align="center">
 
_yatline-catppuccin_
 
![2025-02-04_21-07](https://github.com/user-attachments/assets/8cfc75d7-da4f-4d72-aba1-300be882f791)

</div>


<div align="center">
 
_flavors Dracula + yatline-dracula_
 
![2025-02-04_05-24](https://github.com/user-attachments/assets/1ce2f202-09a0-4ea3-a5a6-b78fd6916b2a)

</div>

## ✨ **Clone the repository**

```
git clone https://github.com/sofijacom/dotfiles-yazi.git ~/.config/yazi
```

## ✨ Install

```
sudo xbps-install -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg ImageMagick
```

## ⚡️ Required
- for ***glow.yazi*** plugin to work

  - ***Glow is a terminal based markdown reader designed from the ground up to bring out the beauty—and power—of the CLI.***

   - ***Use it to discover markdown files, read documentation directly on the command line. Glow will find local markdown files in subdirectories or a local Git repository.***

> Install

```html
# Arch Linux
sudo pacman -S glow

# Void Linux
sudo xbps-install -S glow
```

<div align="center">
 
![2025-02-08_03-53](https://github.com/user-attachments/assets/62bfedd4-c909-4cb6-aad1-a315c3486ce5)

</div>

## ⚡️ Required
- for ***mediainfo.yazi***
> Install

```
# Arch Linux
sudo pacman -S mediainfo

# Void Linux
sudo xbps-install -S mediainfo
```
<div align="center">
 
 ![2025-02-16_00-46](https://github.com/user-attachments/assets/c77449d9-0b8e-41b1-a18c-8a46ff5ba05e)

 ![2025-02-16_02-52](https://github.com/user-attachments/assets/7129df03-bf0e-47a0-97b3-1064bfbb6911)

 </div>

#

> [!NOTE]
> To update plugins in Yazi, you can use the ya command.

## Package Manager

You can manage your plugins and flavors using the ya pkg subcommand. For example, to install the plugin from https://github.com/owner/my-plugin.yazi, run:

```
ya pkg add owner/my-plugin
```

### _ya pkg also supports installing a subdirectory from a monorepo as a package. For example, to install the package from https://github.com/yazi-rs/plugins/tree/main/git.yazi, run:_

```
ya pkg add yazi-rs/plugins:git
```

### _and it will automatically clone them from GitHub, copy them to your plugins directory, and update the package.toml to lock their versions:_

```
# ~/.config/yazi/package.toml
[[plugin.deps]]
use  = "owner/my-plugin"
rev  = "0573024"
hash = "d81b64a39432fcd6224cd75d296e7510"

[[plugin.deps]]
use  = "yazi-rs/plugins:git"
rev  = "9a1129c"
hash = "a8e15d3c21c02a5af41d46ed04778a02"
```

### _To delete a plugin:_

```
ya pkg delete yazi-rs/plugins:git
```

### _To list all the plugins managed by ya pkg:_

```
ya pkg list
```

### _To install all the plugins with locked versions from package.toml on a new system:_

```
ya pkg install
```

### _To upgrade all the plugins to the latest version:_

```
ya pkg upgrade
```

### _If you want to pin a plugin to a specific version so that it doesn't get upgraded when running ya pkg upgrade, add an = qualifier before the hash in rev:_

```
[[plugin.deps]]
use = "owner/my-plugin"
- rev = "9a1129c"
+ rev = "=9a1129c"
```

### _add and delete, they can accept multiple arguments, which means you can operate on multiple packages at once:_

```
ya pkg add owner/my-plugin yazi-rs/plugins:git
ya pkg delete owner/my-plugin yazi-rs/plugins:git
```
