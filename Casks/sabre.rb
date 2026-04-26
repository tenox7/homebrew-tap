cask "sabre" do
  version "0.3.3"
  sha256 "9b82f521fd3574eb415f257f5e4197f11a637166dca553ad380798703f23be92"

  url "https://github.com/tenox7/sabreOSX/releases/download/v#{version}/Sabre.dmg"
  name "Sabre"
  desc "Fighter plane combat simulator"
  homepage "https://github.com/tenox7/sabreOSX"

  depends_on macos: ">= :sonoma"

  app "Sabre.app"
end
