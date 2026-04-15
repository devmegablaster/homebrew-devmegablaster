cask "notch-pilot" do
  version "0.1.4"
  sha256 "789991848a0109d75b9fe27ac4e3e4d12beb0d4e80e723a96c55aa8ac115a29c"

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
