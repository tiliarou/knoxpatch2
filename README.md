# KnoxPatcher
## What is it?
KnoxPatcher is a program that allows Samsung 'secure' apps (so far only Secure Folder) to function on KNOX-tripped Samsung devices.
## Instructions
You will need a GNU/Linux machine to use KnoxPatcher, although I am working on a flashable zip.
- Deodex your services.jar and place it in the `source` directory.
- Run `./patch` to patch it.
- Reboot into TWRP, mount /system, and copy services.jar into /system/framework.
- Edit /system/build.prop and remove / comment out `ro.config.iccc_version`.
- Reboot.
- ???
- Profit
## Tested Devices
This is tested and working with Secure Folder on my Galaxy S9 (SM-G960F).
