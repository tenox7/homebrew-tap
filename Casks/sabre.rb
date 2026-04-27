cask "sabre" do
  version "0.3.4"
  sha256 "d092c88ecbcc834b2273cdd7983d1f4f0815ee6276daa67e78ffe61371518aaf"

  url "https://github.com/tenox7/sabreOSX/releases/download/v#{version}/Sabre.dmg"
  name "Sabre"
  desc "Fighter plane combat simulator"
  homepage "https://github.com/tenox7/sabreOSX"

  depends_on macos: ">= :sonoma"

  app "Sabre.app"
end
