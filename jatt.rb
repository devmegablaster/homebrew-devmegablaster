# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jatt < Formula
  desc ""
  homepage "https://github.com/devmegablaster/jatt"
  version "0.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devmegablaster/jatt/releases/download/v0.13/jatt_Darwin_x86_64.tar.gz"
      sha256 "b1c11b05455e49cdceac2b9bcf915f39b0c39dc4fe2ab88b45bdeb5cee9700e9"

      def install
        bin.install "jatt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devmegablaster/jatt/releases/download/v0.13/jatt_Darwin_arm64.tar.gz"
      sha256 "c8820c9e0a9e236aca3bff119c68f4385a86b2823bdb66fef34831685555d89a"

      def install
        bin.install "jatt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.13/jatt_Linux_x86_64.tar.gz"
        sha256 "9f36c2e932d9f4af913d6a7de5ba583653ceef9962c5d78cf0d8534fa595dac2"

        def install
          bin.install "jatt"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.13/jatt_Linux_arm64.tar.gz"
        sha256 "633e13c9228b9b94539504ba108975a1b8fa9e933579071457da8c2991e16430"

        def install
          bin.install "jatt"
        end
      end
    end
  end
end
