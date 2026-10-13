cask "fast-share" do
  version "1.0"
  sha256 "d70ddb111421bf6fb5a2be58e338b33b1964451f7a3459ac82e9f4288042a591"

  url "https://github.com/praysimanjuntak/fast_share/releases/download/v#{version}/FastShare-#{version}.zip"
  name "Fast Share"
  desc "Share files to your phone over the local network"
  homepage "https://github.com/praysimanjuntak/fast_share"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Fast Share.app"

  uninstall quit: "app.fastshare.FastShare"

  zap trash: [
    "~/Library/Application Support/Fast Share",
    "~/Library/Preferences/app.fastshare.FastShare.plist",
  ]
end
