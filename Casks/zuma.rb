cask "zuma" do
  version "1.4"
  sha256 "5853bb64886f339aee4ef69e74c7cfffa2cdc742de74d781c5832cf6e8eec0ce"

  url "https://github.com/tenox7/ZumaMacOS/releases/download/v#{version}/ZumaPortable.dmg"
  name "Zuma Portable"
  desc "Marble-shooter game port (requires Steam game data)"
  homepage "https://github.com/tenox7/ZumaMacOS"

  depends_on macos: ">= :sonoma"

  app "Zuma Portable.app"
end
