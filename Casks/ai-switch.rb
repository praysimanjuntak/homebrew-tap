cask "ai-switch" do
  version "0.11.1"
  sha256 "d8e746809d8f1830955f0d50593f713c22d04bc4e73d9b5c0285aa4216d4c0f5"

  url "https://github.com/praysimanjuntak/ai-switch/releases/download/v#{version}/AI-Switch-#{version}-macOS-universal-beta.dmg"
  name "AI Switch"
  desc "Switch between Codex, Claude Code, and Antigravity accounts and see their usage"
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
