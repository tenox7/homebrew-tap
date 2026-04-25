cask "rarext" do
  version "0.0.4"
  sha256 "c0f38532db2711ce54c52687e262f186e9fabeeac36ad419a9a7e2b1b0049ce8"

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
