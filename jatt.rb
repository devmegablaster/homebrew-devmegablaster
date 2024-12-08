# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jatt < Formula
  desc ""
  homepage "https://github.com/devmegablaster/jatt"
  version "0.10"

  on_macos do
    on_intel do
      url "https://github.com/devmegablaster/jatt/releases/download/v0.10/jatt_Darwin_x86_64.tar.gz"
      sha256 "3b816d082d2f5ab49c4dac3af0cfbec1bed85cf0607ddcc85025231fc3aa8a4d"

      def install
        bin.install "jatt"
      end
    end
    on_arm do
      url "https://github.com/devmegablaster/jatt/releases/download/v0.10/jatt_Darwin_arm64.tar.gz"
      sha256 "8e31ee29e41e90aba5a281af016f544e540186aebd8f2fe3baccc54f2e348d3f"

      def install
        bin.install "jatt"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.10/jatt_Linux_x86_64.tar.gz"
        sha256 "18ae60f4b4a4a44655b628c041e22df0d712c53f77430dd15ddf4ca135d1e166"

        def install
          bin.install "jatt"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.10/jatt_Linux_arm64.tar.gz"
        sha256 "49d5a50f8ee92d667d0fcb4f2831a97ba25d859c00f63aa1551b2e51b5182615"

        def install
          bin.install "jatt"
        end
      end
    end
  end
end
