cask "enigma" do
  version "1.30-arm64"
  sha256 "966e59d20c9ed185d94cdc9984f4c90a8617a088dceebbf1f4e42066c14095dd"

  url "https://github.com/tenox7/Enigma/releases/download/#{version}/Enigma.dmg"
  name "Enigma"
  desc "Puzzle game inspired by Oxyd and Rock'n'Roll"
  homepage "https://github.com/tenox7/Enigma"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Enigma/Enigma.app"
end
