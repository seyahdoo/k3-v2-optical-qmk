# Keychron K3v2 QMK

This repo is for me to compile [QMK][] firmware for my [Keychron K3][]
keyboard. Actually, it uses the [Sonix QMK][] fork to work on the K3's
SN32F248B chip.

It uses GitHub actions to build and upload compiled `.bin` files suitable for
flashing with [Sonix Flasher][].

I did this for two reasons:

1. I wanted a semi-reproducible environment to build firmware on in case my
   computers change.
2. I wanted an archive of the keymap code _and_ the generated firmwares. This
   way I can tag a working version on GitHub and always have a copy in case
   I break something.

## K3v2 Keymap

My K3v2 keymap is at
[`keyboards/keychron/k3/keymaps/iso_seyahdoo/keymap.c`](./keyboards/keychron/k3/keymaps/iso_seyahdoo/keymap.c).
It is a copy of the [`keychron/k3/rgb/optical_iso:iso`][Sonix QMK K3 Keymap]
that I've tweaked a bit.

See the [releases](https://github.com/seyahdoo/k3-v2-optical-qmk/releases) page for
tagged builds.

## GitHub Workflow

Make changes to `keymap.c` and then commit/push them to GitHub. If a build
passes, the compiled firmware will be uploaded as a build artifact. It can be
downloaded from the view build page on GitHub. These uploads will be deleted
eventually, so do not rely on being able to download them forever.

When the firmware reaches a good saving point, uploading a git tag will
trigger a build and upload the compiled firmware as a release asset. These
files stay on GitHub for the life of the project.

To see how to do this locally on macOS or Linux, see
[`.github/workflows/build.yml`](./.github/workflows/build.yml).

Huge thanks to [QMK-on-K6][] for outlining this process!

[Forked from Keychron K6 CI Repo](https://github.com/itspriddle/k6-qmk)

[QMK]: https://qmk.fm
[Sonix QMK]: https://github.com/SonixQMK/qmk_firmware
[Sonix QMK K3 Keymap]: https://github.com/SonixQMK/qmk_firmware/blob/96d0671481abb3b9c751a1e35b558a86c55d9d92/keyboards/keychron/k3/keymaps/iso/keymap.c
[Sonix Flasher]: https://github.com/SonixQMK/sonix-flasher/releases/tag/v0.2.1
[QMK-on-K6]: https://github.com/CanUnesi/QMK-on-K6/blob/main/README.md
[Keychron K3]: https://www.keychron.com/products/keychron-k3-wireless-mechanical-keyboard
