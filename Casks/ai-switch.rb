cask "ai-switch" do
  version "0.10.0"
  sha256 "2d78aff36d1c2d056d3a7c7955d5da6bf22029a95e679dbb2549d2b740361cce"

  url "https://github.com/praysimanjuntak/ai-switch/releases/download/v#{version}/AI-Switch-#{version}-macOS-universal-beta.dmg"
  name "AI Switch"
  desc "Switch between Codex and Claude Code accounts and see their usage"
  homepage "https://github.com/praysimanjuntak/ai-switch"

  depends_on macos: :sonoma

  app "AI Switch.app"
  binary "#{appdir}/AI Switch.app/Contents/MacOS/AISwitch", target: "aiswitch"

  uninstall quit: "com.pray.AISwitch"

  zap trash: [
    "~/Library/Application Support/AI Switch",
    "~/Library/Caches/com.pray.AISwitch",
    "~/Library/HTTPStorages/com.pray.AISwitch",
    "~/Library/Preferences/com.pray.AISwitch.plist",
  ]

  caveats <<~EOS
    AI Switch is ad-hoc signed and not notarized by Apple. If macOS blocks the
    first launch, allow it in System Settings > Privacy & Security > Open Anyway.
  EOS
end
