# tenox7/tap

Homebrew tap for [tenox7](https://github.com/tenox7) macOS apps.

## Install

```sh
brew install --cask tenox7/tap/audiosnitch
brew install tenox7/tap/ttycity
```

Or tap once and install by name:

```sh
brew tap tenox7/tap
brew install --cask audiosnitch
brew install ttycity
```

## Casks

| Cask | Description |
| --- | --- |
| [audiosnitch](https://github.com/tenox7/audiosnitch) | Monitors which apps are producing audio output |
| [dufus](https://github.com/tenox7/dufus) | SD card and USB disk image writer |
| [partmount](https://github.com/tenox7/partmount) | Disk image partition mounter |
| [rarext](https://github.com/tenox7/rarext) | Finder Quick Actions extension for RAR archives |
| [sabre](https://github.com/tenox7/sabreOSX) | Port of SABRE Fighter Plane Simulator to macOS |
| [sng](https://github.com/tenox7/sng) | System and network grapher |
| [wifimon](https://github.com/tenox7/wifimon) | Wi-Fi network monitor |
| [zuma](https://github.com/tenox7/ZumaMacOS) | Zuma Deluxe port for macOS (requires Steam game data) |

## Formulae

| Formula | Description |
| --- | --- |
| [ttycity](https://github.com/tenox7/ttycity) | Micropolis (SimCity) for the terminal, using ncurses |

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

## Bumping a formula after a new source release

Formulae build from a tagged source tarball, pinned by `url` + `sha256`.

```sh
cd ~/Code/_github/ttycity   # or whichever formula's repo
git tag -a vX.Y.Z -m "vX.Y.Z"
git push origin vX.Y.Z
curl -sL -o /tmp/src.tar.gz https://github.com/tenox7/<repo>/archive/refs/tags/vX.Y.Z.tar.gz
shasum -a 256 /tmp/src.tar.gz
# edit Formula/<name>.rb: update `url` and `sha256`
git -C ~/Code/_github/homebrew-tap commit -am "<name>: bump to X.Y.Z"
git -C ~/Code/_github/homebrew-tap push
```

Users then pick up the new version with `brew upgrade`.
