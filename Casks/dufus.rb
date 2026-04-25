cask "dufus" do
  version "1.0.3"
  sha256 "5464615f111cff932e8e144beeecd263436f8f717b1da8a4ce088ee4ebd2a2fe"

  url "https://github.com/tenox7/dufus/releases/download/#{version}/Dufus.dmg"
  name "Dufus"
  desc "SD card and USB disk image writer"
  homepage "https://github.com/tenox7/dufus"

  depends_on macos: ">= :ventura"

  app "Dufus.app"

  zap trash: [
    "~/Library/Preferences/com.github.tenox7.dufus.plist",
    "~/Library/Saved Application State/com.github.tenox7.dufus.savedState",
  ]
end
