cask "ai-switch" do
  version "0.9.0"
  sha256 "a3efc538a76738ac45be6e550f9f728b517641aa7f1ca06c3b30e4d0d75df0f4"

  url "https://github.com/praysimanjuntak/ai-switch/releases/download/v#{version}/AI-Switch-#{version}-macOS-universal-beta.dmg"
  name "AI Switch"
  desc "Switch between Codex and Claude Code accounts and see their usage"
  homepage "https://github.com/praysimanjuntak/ai-switch"

  depends_on macos: :sonoma

  app "AI Switch.app"

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
