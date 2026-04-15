cask "notch-pilot" do
  version "0.1.3"
  sha256 "35c19f1166c3861548388ae84edfbad774ab1a35b8c719b98ad50c9c5d7bfd7a"

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
