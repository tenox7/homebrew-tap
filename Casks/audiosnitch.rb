cask "audiosnitch" do
  version "1.0.1"
  sha256 "0d70c61a1186c4a2a585d37e803d0bb39d1f16980a70a7fc3006b30dfe74f16a"

  url "https://github.com/tenox7/audiosnitch/releases/download/#{version}/AudioSnitch.dmg"
  name "Audio Snitch"
  desc "Monitors which apps are producing audio output"
  homepage "https://github.com/tenox7/audiosnitch"

  depends_on macos: ">= :sonoma"

  app "AudioSnitch.app"

  zap trash: [
    "~/Library/Preferences/com.audiosnitch.app.plist",
    "~/Library/Saved Application State/com.audiosnitch.app.savedState",
  ]
end
