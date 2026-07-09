cask "squat-coach" do
  version "0.3.0"
  sha256 "713d3b87eae44730ad197c2f390dee9bb3c1a56586954ae8a6368ca9a88ac3a1"

  url "https://github.com/brianyoungilcho/squat-coach/releases/download/v#{version}/Squat-Coach-#{version}.zip"
  name "Squat Coach"
  desc "Menu-bar squat reminder that counts reps with your webcam"
  homepage "https://github.com/brianyoungilcho/squat-coach"

  depends_on macos: ">= :ventura"

  app "Squat Coach.app"

  caveats <<~EOS
    Squat Coach is ad-hoc signed (not notarized). Install with:
      brew install --cask --no-quarantine brianyoungilcho/tap/squat-coach
    or clear quarantine after install:
      xattr -dr com.apple.quarantine "/Applications/Squat Coach.app"

    On first launch, allow Camera and Notifications. Squat detection runs
    entirely on-device (Apple Vision) — no video is recorded, saved, or sent.
  EOS
end
