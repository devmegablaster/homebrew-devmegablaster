cask "notch-pilot" do
  version "0.1.1"
  sha256 "2ac995b8108a9b9b40166c2d54806d964aa437f5c4a81f31c3df70796acc510a"

  url "https://github.com/devmegablaster/Notch-Pilot/releases/download/v#{version}/NotchPilot-#{version}.dmg"
  name "Notch Pilot"
  desc "Live companion for Claude Code that lives in your MacBook notch"
  homepage "https://github.com/devmegablaster/Notch-Pilot"

  depends_on macos: ">= :sonoma"

  app "Notch Pilot.app"

  zap trash: [
    "~/.notch-pilot",
  ]
end
