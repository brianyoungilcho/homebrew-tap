cask "claude-dash" do
  version "1.2.0"
  sha256 "66bd6aeb1d02ee05e1bb36bc60fddc5bd5161ab3967fcd1f5996d04411cdcbd1"

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
