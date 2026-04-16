cask "notch-pilot" do
  version "0.3.3"
  sha256 "c2b61918de24d87f9103bf146480ed843f4fb71c1ac096c134de908c17991da1"

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
