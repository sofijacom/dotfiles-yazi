# yatline-gruvbox-material.yazi
Gruvbox Material theme for Yatline plugin. 

## Illustration
> Gruvbox Material Hard Dark:

![header_hard_dark_normal](https://github.com/user-attachments/assets/1a34ebb5-63aa-494d-ab7d-bb66ff9bf653)
![header_hard_dark_select](https://github.com/user-attachments/assets/dd9e0f4b-4b0c-45e1-9bd3-f8527baa8db1)
![header_hard_dark_un-set](https://github.com/user-attachments/assets/a330f474-dd52-418a-af0e-c5ac12936d3f)

![status_hard_dark_normal](https://github.com/user-attachments/assets/d0071e24-9ddb-4d0b-8e2d-300c95035f8e)
![status_hard_dark_select](https://github.com/user-attachments/assets/57f2331e-ebb6-42ca-bd28-55404029663b)
![status_hard_dark_un-set](https://github.com/user-attachments/assets/606b02ce-86d5-456b-abc5-e7210f816aab)

> Gruvbox Material Medium Dark:

![header_medium_dark_normal](https://github.com/user-attachments/assets/b443e163-0531-4a80-94ce-ef53ccf90093)
![header_medium_dark_select](https://github.com/user-attachments/assets/cc937c4a-b7fd-447a-b60a-757f87176b99)
![header_medium_dark_un-set](https://github.com/user-attachments/assets/2ebe5a5b-9258-4999-86ec-d4cb56269359)

![status_medium_dark_normal](https://github.com/user-attachments/assets/fc4ff174-6fbe-4300-8adb-38c3dcc1fec7)
![status_medium_dark_select](https://github.com/user-attachments/assets/0a9699cf-50e2-4ba0-badc-66f1238f0a08)
![status_medium_dark_un-set](https://github.com/user-attachments/assets/ceef7065-7d73-4a31-b8f0-b5fc54ffb9ba)

> Gruvbox Material Soft Dark:

![header_soft_dark_normal](https://github.com/user-attachments/assets/8c230205-0619-4f87-9ad8-0d08e219034d)
![header_soft_dark_select](https://github.com/user-attachments/assets/073c2df6-f9f7-467f-b4a3-5ca01a577c1b)
![header_soft_dark_un-set](https://github.com/user-attachments/assets/c0ddd51d-facf-46b5-8ed5-90eef78e05bf)

![status_soft_dark_normal](https://github.com/user-attachments/assets/8b82d8a6-2322-4217-b948-2908e0959088)
![status_soft_dark_select](https://github.com/user-attachments/assets/18dd6c27-f2d2-444b-90cb-63a2c25e0bef)
![status_soft_dark_un-set](https://github.com/user-attachments/assets/7e61192b-f2f6-4908-adee-97f7f6a8d8f2)

> Gruvbox Material Hard Light:

![header_hard_light_normal](https://github.com/user-attachments/assets/557ee207-6d6e-4948-8d02-b64ff2a3413d)
![header_hard_light_select](https://github.com/user-attachments/assets/89ccac4a-feae-47c9-8a39-d106e0a22b5d)
![header_hard_light_un-set](https://github.com/user-attachments/assets/4355c183-3024-4cac-8f31-e50584c52787)

![status_hard_light_normal](https://github.com/user-attachments/assets/57ed4c1b-8905-4135-b737-ff34cc9605f0)
![status_hard_light_select](https://github.com/user-attachments/assets/89f75ac7-3201-49e5-bcd7-1929d90a4052)
![status_hard_light_un-set](https://github.com/user-attachments/assets/4fb505d3-d36a-4e75-9ec3-f14d3a5134af)

> Gruvbox Material Medium Light:

![header_medium_light_normal](https://github.com/user-attachments/assets/1e41531a-c80d-45ef-8cde-a66020a05624)
![header_medium_light_select](https://github.com/user-attachments/assets/3017c9da-0e5a-4d8a-82bb-198133a19454)
![header_medium_light_un-set](https://github.com/user-attachments/assets/fe986a94-9e9c-499f-98d8-bf57b4746725)

![status_medium_light_normal](https://github.com/user-attachments/assets/06c51301-9edb-40d2-bd18-40e652324933)
![status_medium_light_select](https://github.com/user-attachments/assets/b0fa02d5-cb09-4547-a62f-6b22c9d93397)
![status_medium_light_un-set](https://github.com/user-attachments/assets/a659d53f-6f86-4115-81bd-21513656a751)

> Gruvbox Material Soft Light:

![header_soft_light_normal](https://github.com/user-attachments/assets/857878c3-37f2-4ecd-9842-d154d8e2beeb)
![header_soft_light_select](https://github.com/user-attachments/assets/45ce8633-60cb-4bf8-bda7-7540243d0950)
![header_soft_light_un-set](https://github.com/user-attachments/assets/9b2b31fd-2fe5-4318-8184-2fdd2b9de5df)

![status_soft_light_normal](https://github.com/user-attachments/assets/e8631975-ddde-47ea-b2cb-a600efcaedb4)
![status_soft_light_select](https://github.com/user-attachments/assets/d0443703-f711-42de-a40a-e39037b4f982)
![status_soft_light_un-set](https://github.com/user-attachments/assets/c0c985ba-89f0-4cce-bb7b-6180124fdff7)


## Installation

### General
1) Download the repository.
2) If the directory is downloaded as zip file, extract it.
3) Rename the directory as `yatline-gruvbox-material.yazi`
4) Open the config directory of Yazi.
5) Copy this directory into `plugins` directory.
6) Create `init.lua` file in the main Yazi config directory.
7) Open this file and copy the config to that file.

### Linux
``` bash
git clone https://github.com/imsi32/yatline-gruvbox-material.yazi.git ~/.config/yazi/plugins/yatline-gruvbox-material.yazi
```

## Usage
Copy the following config to the `init.lua` file.
``` lua
local gruvbox_material_theme = require("yatline-gruvbox-material"):setup({ mode = "dark", toughness = "medium" }) -- or "light" -- or "hard" | "soft"
```
Then use the `theme` variable in Yatline config's theme paramater.
``` lua
require("yatline"):setup({
-- ===

	theme = gruvbox_material_theme,

-- ===
})
```

## Credits
- [Gruvbox Material Theme](https://github.com/sainnhe/gruvbox-material)
