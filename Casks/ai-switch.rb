cask "ai-switch" do
  version "0.10.1"
  sha256 "8ba67c02efe3ee8c0073163913b35271d9e785387f1f13398fc1eb6448025b39"

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
