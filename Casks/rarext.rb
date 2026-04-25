cask "rarext" do
  version "0.0.5"
  sha256 "94ea97c409c2b0b88d352856367bfc1873bfdf48af8451df4618422cd3e664ff"

  url "https://github.com/tenox7/rarext/releases/download/#{version}/RARExt.pkg"
  name "RARExt"
  desc "Finder Quick Actions extension for RAR archives"
  homepage "https://github.com/tenox7/rarext"

  depends_on macos: ">= :sequoia"

  pkg "RARExt.pkg"

  uninstall pkgutil: "com.example.rarext"

  zap trash: [
    "~/Library/Preferences/com.example.rarext.plist",
    "~/Library/Saved Application State/com.example.rarext.savedState",
  ]

  caveats <<~EOS
    RARExt requires the `rar` binary at /usr/local/bin/rar (download from
    https://www.rarlab.com/download.htm).

    After install, open RARExt.app once from /Applications, then enable it in
    System Settings → General → Login Items & Extensions → Finder.
  EOS
end
