cask "wifimon" do
  version "1.1"
  sha256 "8556f6f9a61df123d3c14ee026d26d13e66bf9582b68eb413891bf33ac414c1d"

  url "https://github.com/tenox7/wifimon/releases/download/#{version}/WifiMon.dmg"
  name "WifiMon"
  desc "Wi-Fi network monitor"
  homepage "https://github.com/tenox7/wifimon"

  depends_on macos: ">= :ventura"

  app "WifiMon.app"

  zap trash: [
    "~/Library/Preferences/local.wifimon.app.plist",
    "~/Library/Saved Application State/local.wifimon.app.savedState",
  ]
end
