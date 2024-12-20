# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Jatt < Formula
  desc ""
  homepage "https://github.com/devmegablaster/jatt"
  version "0.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Darwin_x86_64.tar.gz"
      sha256 "f9e243e8868bb80df28e4fbd4ef9400fd412377e6f8984e15c830c0104c9f64d"

      def install
        bin.install "jatt"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Darwin_arm64.tar.gz"
      sha256 "43529f853bb85c81079b092e6763c3b57819bc815352736fa872a93e7fac4b3b"

      def install
        bin.install "jatt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Linux_x86_64.tar.gz"
        sha256 "5b093ba75bb3b4b40d57b20a430dbfd12d0d6182521f38dcbad18d8eb20748c8"

        def install
          bin.install "jatt"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/devmegablaster/jatt/releases/download/v0.12/jatt_Linux_arm64.tar.gz"
        sha256 "bea8ffeb2135401afaa936e7ba27890d437423fefc6349d19ebe2c7855073ef6"

        def install
          bin.install "jatt"
        end
      end
    end
  end
end
