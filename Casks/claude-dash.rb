cask "claude-dash" do
  version "1.5.0"
  sha256 "f41621f14fbb3222aa486499f5f5aa886819b836fe870385dbf89e24d44757ba"

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
