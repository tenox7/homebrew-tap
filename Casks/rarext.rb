cask "rarext" do
  version "0.0.5"
  sha256 "06023a7646a67ad06ba691210d5404b2bf62e8e42eed5cef6fcb09dcf169ca27"

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
