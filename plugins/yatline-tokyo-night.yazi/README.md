# yatline-tokyo-night.yazi

Tokyo Night for Yatline

## Preview

> Moon:

![header_moon_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/moon-header-normal.png)
![header_moon_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/moon-header-select.png)
![header_moon_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/moon-header-un-set.png)

![status_moon_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/moon-status-normal.png)
![status_moon_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/moon-status-select.png)
![status_moon_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/moon-status-un-set.png)

> Storm:

![header_storm_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/storm-header-normal.png)
![header_storm_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/storm-header-select.png)
![header_storm_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/storm-header-un-set.png)

![status_storm_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/storm-status-normal.png)
![status_storm_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/storm-status-select.png)
![status_storm_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/storm-status-un-set.png)

> Night:

![header_night_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/night-header-normal.png)
![header_night_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/night-header-select.png)
![header_night_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/night-header-un-set.png)

![status_night_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/night-status-normal.png)
![status_night_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/night-status-select.png)
![status_night_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/night-status-un-set.png)

> Day:

![header_day_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/day-header-normal.png)
![header_day_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/day-header-select.png)
![header_day_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/day-header-un-set.png)

![status_day_normal](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/day-status-normal.png)
![status_day_select](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/day-status-select.png)
![status_day_un-set](https://github.com/wekauwau/yatline-tokyo-night.yazi/blob/main/assets/day-status-un-set.png)

## Requirements

- [yazi](https://github.com/sxyazi/yazi) version >= 0.3.0
- [yatline.yazi](https://github.com/imsi32/yatline.yazi)

## Installation

```sh
ya pack -a wekauwau/yatline-tokyo-night
```

## Usage

> [!IMPORTANT]
> Add this to your `~/.config/yazi/init.lua` before Yatline's initialization.

```lua
local tokyo_night_theme = require("yatline-tokyo-night"):setup("night") -- or moon/storm/day
```

Then use the `theme` variable in Yatline config's theme parameter.

```lua
require("yatline"):setup({
-- ===

	theme = tokyo_night_theme,

-- ===
})
```

## Credits

- [yatline-catppuccin.yazi](https://github.com/imsi32/yatline-catppuccin.yazi)
- [yatline-gruvbox.yazi](https://github.com/imsi32/yatline-gruvbox.yazi)
