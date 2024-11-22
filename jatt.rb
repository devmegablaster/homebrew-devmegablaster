# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jatt < Formula
  desc ""
  homepage "https://github.com/devmegablaster/jatt"
  version "0.7"

  on_macos do
    on_intel do
      url "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Darwin_x86_64.tar.gz"
      sha256 "4f443419da014d297ab5afe2c8c448a47c1660669607160efd0db5b2f78a9fe2"

      def install
        bin.install "jatt"
      end
    end
    on_arm do
      url "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Darwin_arm64.tar.gz"
      sha256 "77ecd6167dda6efab80b62e584ec1df09b9f175a11b294acae1c35a65398c5db"

      def install
        bin.install "jatt"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_x86_64.tar.gz"
        sha256 "6edc908791173faa072a0df3b900723efd766c3d192f8220ab54cc6a45b56ee8"

        def install
          bin.install "jatt"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.7/jatt_Linux_arm64.tar.gz"
        sha256 "d267b13c44974f5003bd4d19a20d78b77f8feb7295e046f83ec2216f58cc4ec7"

        def install
          bin.install "jatt"
        end
      end
    end
  end
end
