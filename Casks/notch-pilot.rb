cask "notch-pilot" do
  version "0.1.5"
  sha256 "5a5d13954b244540c60bc1b33f4f7aeecd522961897b78d11443ccff2e7671b1"

  url "https://github.com/devmegablaster/Notch-Pilot/releases/download/v#{version}/NotchPilot-#{version}.dmg"
  name "Notch Pilot"
  desc "Live companion for Claude Code that lives in your MacBook notch"
  homepage "https://github.com/devmegablaster/Notch-Pilot"

  depends_on macos: ">= :sonoma"

  app "Notch Pilot.app"

  # The app is ad-hoc signed (no paid Apple Developer ID), so
  # macOS Gatekeeper quarantines it on download. Strip the
  # quarantine attribute so the user isn't blocked on first
  # launch. Standard pattern for unsigned open-source casks.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Notch Pilot.app"]
  end

  zap trash: [
    "~/.notch-pilot",
  ]
end
