cask "partmount" do
  version "1.0.2"
  sha256 "dc8fe874c51c7fa4ba39df14e665fd7db8687a0deb955896162f48b8fb43c1b8"

  url "https://github.com/tenox7/partmount/releases/download/#{version}/PartMount.dmg"
  name "PartMount"
  desc "Disk image partition mounter"
  homepage "https://github.com/tenox7/partmount"

  depends_on macos: ">= :ventura"

  app "PartMount.app"

  zap trash: [
    "~/Library/Preferences/com.github.tenox7.partmount.plist",
    "~/Library/Saved Application State/com.github.tenox7.partmount.savedState",
  ]
end
