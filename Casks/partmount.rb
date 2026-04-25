cask "partmount" do
  version "1.0.2"
  sha256 "55e3c75da7dca7f361860fce449b6189caca63856d0c73e80e4d2b94c592974b"

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
