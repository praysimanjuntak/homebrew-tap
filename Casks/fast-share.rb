cask "fast-share" do
  version "1.0.1"
  sha256 "2e70131258efbe9a16c846eef4ceea76bd53afb43c595d77e3859404307bd882"

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
