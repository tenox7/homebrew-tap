cask "sng" do
  version "1.0.0"
  sha256 "e52e7070cc9fb2294dd4c90bdbdc6af3e0f1c654df8a413ad8e7f0d79539560d"

  url "https://github.com/tenox7/sng/releases/download/#{version}/sng-macos.dmg"
  name "SNG"
  desc "System and network grapher"
  homepage "https://github.com/tenox7/sng"

  depends_on macos: ">= :sequoia"

  app "SNG.app"

  zap trash: [
    "~/Library/Preferences/com.example.sng.plist",
    "~/Library/Saved Application State/com.example.sng.savedState",
  ]
end
