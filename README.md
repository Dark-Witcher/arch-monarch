# Arch Win Spinner

A monochrome Plymouth theme for Arch Linux featuring the Arch Linux logo and a custom 30-frame spinner inspired by the Windows loading animation.

## Features

- Monochrome black background
- Arch Linux logo
- Custom high-resolution 30-frame spinner
- Windows-style loading animation
- Animated spinner during normal boot
- Pulsing Arch Linux logo outside normal boot mode
- Password prompt support for encrypted filesystems
- Plymouth message handling
- Simple installation script

## Installation

Clone the repository:

```bash
git clone https://github.com/Dark-Witcher/arch-win-spinner.git
cd arch-win-spinner
```

Run the installer:

```bash
./install.sh
```

The installer will:

1. Copy the theme to `/usr/share/plymouth/themes/arch-win-spinner`.
2. Set Arch Win Spinner as the default Plymouth theme.
3. Rebuild the initramfs using `plymouth-set-default-theme -R`.

After installation, reboot to see the theme.

> **Note:** The theme is intended for systems using Plymouth with the `script` splash plugin.

---

## Manual Installation

If you prefer to install the theme manually:

```bash
sudo install -d /usr/share/plymouth/themes/arch-win-spinner

sudo cp -a \
    images \
    arch-win-spinner.plymouth \
    arch-win-spinner.script \
    /usr/share/plymouth/themes/arch-win-spinner/
```

Set Arch Win Spinner as the default theme:

```bash
sudo plymouth-set-default-theme -R arch-win-spinner
```

Reboot:

```bash
systemctl reboot
```

---

## Uninstallation

Remove the installed theme:

```bash
sudo rm -rf /usr/share/plymouth/themes/arch-win-spinner
```

Then select another Plymouth theme and rebuild the initramfs:

```bash
sudo plymouth-set-default-theme -R <theme-name>
```

For example:

```bash
sudo plymouth-set-default-theme -R bgrt
```

> Make sure another valid Plymouth theme is selected before rebooting.

---

## Theme Structure

```text
.
├── arch-win-spinner.plymouth
├── arch-win-spinner.script
├── images
│   ├── box.png
│   ├── bullet.png
│   ├── entry.png
│   ├── lock.png
│   ├── logo.png
│   └── spinner-0.png ... spinner-29.png
├── install.sh
├── LICENSE
└── README.md
```

The spinner consists of 30 individual PNG frames.

During normal boot, the theme cycles through the frames to create the loading animation.

---

## Credits

Arch Win Spinner is based on the original [Monoarch](https://github.com/farsil/monoarch) Plymouth theme by farsil.

The theme incorporates code originating from Plymouth script examples by **Marco Buzzanca**.

The Arch Linux artwork is derived from artwork provided by the Arch Linux project.

The custom spinner and modifications to the original theme were created for Arch Win Spinner.

---

## License

Arch Win Spinner is released under the MIT License.

Copyright:

- © 2016 Marco Buzzanca
- © 2024 Dark Witcher

See [LICENSE](LICENSE) for the complete license text.

---

## Disclaimer

This theme modifies the system Plymouth configuration and rebuilds the initramfs.

Make sure you have another working Plymouth theme available before changing your default theme, particularly on systems using encrypted root filesystems.

Use at your own risk.
