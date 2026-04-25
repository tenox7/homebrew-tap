# tenox7/tap

Homebrew tap for [tenox7](https://github.com/tenox7) macOS apps.

## Install

```sh
brew install --cask tenox7/tap/audiosnitch
```

Or tap once and install by name:

```sh
brew tap tenox7/tap
brew install --cask audiosnitch
```

## Casks

| Cask | Description |
| --- | --- |
| [audiosnitch](https://github.com/tenox7/audiosnitch) | Monitors which apps are producing audio output |
| [dufus](https://github.com/tenox7/dufus) | SD card and USB disk image writer |
| [partmount](https://github.com/tenox7/partmount) | Disk image partition mounter |
| [rarext](https://github.com/tenox7/rarext) | Finder Quick Actions extension for RAR archives |
| [sng](https://github.com/tenox7/sng) | System and network grapher |
| [wifimon](https://github.com/tenox7/wifimon) | Wi-Fi network monitor |

## Bumping a cask after a new app release

Casks pin a specific `version` + `sha256`, so this tap must be updated when an
app cuts a new release.

```sh
cd ~/Code/_github/homebrew-tap
shasum -a 256 /path/to/NewBuild.dmg          # or .pkg
# edit Casks/<app>.rb: update `version` and `sha256`
git commit -am "<app>: bump to X.Y.Z"
git push
```

Users then pick up the new version with `brew upgrade`.
