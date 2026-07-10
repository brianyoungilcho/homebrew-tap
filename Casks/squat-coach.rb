cask "squat-coach" do
  version "0.4.1"
  sha256 "848a6e89f27a2959503046a7e5193deac5f96cd27848bd3caf8096a3f2619cf1"

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
