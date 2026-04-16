cask "notch-pilot" do
  version "0.4.1"
  sha256 "eaf25da4c0918b88e7a19a118a3fe876fd66646964025d39acfc30c5c8966315"

  url "https://github.com/devmegablaster/Notch-Pilot/releases/download/v#{version}/NotchPilot-#{version}.dmg"
  name "Notch Pilot"
  desc "Live companion for Claude Code that lives in your MacBook notch"
  homepage "https://github.com/devmegablaster/Notch-Pilot"

  depends_on macos: ">= :sonoma"

  app "Notch Pilot.app"

  # Postflight: strip the quarantine attribute (the app is
  # ad-hoc signed, so Gatekeeper would otherwise block it on
  # first launch) and then immediately launch the app. The
  # user expects a notch utility to "just appear" after
  # install, not to have to dig through /Applications.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Notch Pilot.app"]
    system_command "/usr/bin/open",
                   args: ["-a", "#{appdir}/Notch Pilot.app"]
  end

  zap trash: [
    "~/.notch-pilot",
  ]
end
