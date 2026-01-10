<p align="center">
    <img src="https://github.com/rose-pine/rose-pine-theme/raw/main/assets/icon.png" width="80" />
    <h2 align="center">Rosé Pine for Yazi File Manager</h2>
</p>

<p align="center">All natural pine, faux fur and a bit of soho vibes for the classy minimalist</p>

## 👀 Preview

<img src="preview.png" width="600" />

## 🎨 Installation

<!-- Please replace "username/example" with your repository name. -->
On Archlinux, Gentoo, or any other imperative distro.
```sh
ya pkg add rachitve6h2g/rose-pine-yazi:rose-pine-main
```

On NixOS Home-Manager.

```nix
{ pkgs, ... }: {
    programs.yazi = {
        flavors = {
            rose-pine = ( 
                pkgs.stdenv.mkDerivation {
                name = "rose-pine-yazi";
                src = pkgs.fetchFromGitHub {
                  owner = "rachitve6h2g";
                  repo = "rose-pine-yazi";
                  rev = "860081ad782f9740212d4cbf1a0493a8afc55d13";
                  hash = "sha256-kmE/cZAXhqlAlGUsvTZAe1mAaKncBAKbYiEV2zc4JME=";
                };
                installPhase = ''
                  mkdir $out
                  cp -r $src/rose-pine-main.yazi/* $out/
                '';
            });
        };

        theme = {
            flavor = {
                dark = "rose-pine";
            };
        };
    };
}
```

## ⚙️ Usage

<!--
Please replace "example" with your flavor name.

If your flavor uses a light color scheme, use "light" instead of "dark" wherever it appears below.
-->

To set it as your dark flavor, change the content of your `theme.toml` to:

```toml
[flavor]
dark = "rose-pine"
```

Make sure your `theme.toml` doesn't contain anything other than `[flavor]`, unless you want to override certain styles of this flavor.

See the [Yazi flavor documentation](https://yazi-rs.github.io/docs/flavors/overview) for more details.

## 📜 License

The flavor is MIT-licensed, and the included tmTheme is also MIT-licensed.

Check the [LICENSE](LICENSE) and [LICENSE-tmtheme](LICENSE-tmtheme) file for more details.
