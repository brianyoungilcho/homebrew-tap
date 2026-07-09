cask "claude-dash" do
  version "1.5.8"
  sha256 "c18271d4e92db0614acb924b7c31350aea942616e9101998a925caa2f80584c7"

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
