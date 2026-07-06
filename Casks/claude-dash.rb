cask "claude-dash" do
  version "0.0.0-taptest"
  sha256 "72f9b922d5b3d49e7cb8d928a5580baaba023eeb76567bf4384a8a5b09dbe661"

  url "https://github.com/brianyoungilcho/claude-dash/releases/download/v#{version}/Claude-Dash-#{version}.zip"
  name "Claude Dash"
  desc "Menu-bar dashboard for multiple Claude accounts"
  homepage "https://github.com/brianyoungilcho/claude-dash"

  depends_on macos: ">= :ventura"

  app "Claude Dash.app"

  caveats <<~EOS
    Claude Dash is ad-hoc signed (not notarized). Install with:
      brew install --cask --no-quarantine brianyoungilcho/tap/claude-dash
    or clear quarantine after install:
      xattr -dr com.apple.quarantine "/Applications/Claude Dash.app"
  EOS
end
