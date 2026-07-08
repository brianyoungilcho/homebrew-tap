cask "claude-dash" do
  version "1.5.7"
  sha256 "1d2f9f1bff9386991dd483f317328edbc1381736be9f71bca463ff8d2bb32834"

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
