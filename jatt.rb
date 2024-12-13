# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jatt < Formula
  desc ""
  homepage "https://github.com/devmegablaster/jatt"
  version "0.11"

  on_macos do
    on_intel do
      url "https://github.com/devmegablaster/jatt/releases/download/v0.11/jatt_Darwin_x86_64.tar.gz"
      sha256 "0a1fc3edf99534aa62db8c13f71d3f347814f493f507288908a853b1f32a978b"

      def install
        bin.install "jatt"
      end
    end
    on_arm do
      url "https://github.com/devmegablaster/jatt/releases/download/v0.11/jatt_Darwin_arm64.tar.gz"
      sha256 "55806450ac58ecea2cd6ff8d02a3b7e32b35a66bfac9f9621591a647c05e2060"

      def install
        bin.install "jatt"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.11/jatt_Linux_x86_64.tar.gz"
        sha256 "8aa4fbb7fc734b9b34329e7f22840e0349015f9e7bfcda84b3bad2930a52634a"

        def install
          bin.install "jatt"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.11/jatt_Linux_arm64.tar.gz"
        sha256 "4dce55000d7dca53656dde2c1142a99be71bd32e73946294d52c7a76b9ddb471"

        def install
          bin.install "jatt"
        end
      end
    end
  end
end
