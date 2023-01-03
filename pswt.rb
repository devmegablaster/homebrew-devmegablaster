# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pswt < Formula
  desc ""
  homepage "https://github.com/devmegablaster/pastewut-cli/"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/devmegablaster/pastewut-cli/releases/download/v1.0.2/pastewut-cli_1.0.2_darwin_arm64.tar.gz"
      sha256 "47ac009d83cf73e95aa73b1ea02e4ca750816e9b79ea54ecd52b7a68a9d48295"

      def install
        bin.install "pswt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/devmegablaster/pastewut-cli/releases/download/v1.0.2/pastewut-cli_1.0.2_darwin_amd64.tar.gz"
      sha256 "e99ca99351fe603555496ccb1c77961dcaf87af6111943b99f30fba24bd046d0"

      def install
        bin.install "pswt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/devmegablaster/pastewut-cli/releases/download/v1.0.2/pastewut-cli_1.0.2_linux_amd64.tar.gz"
      sha256 "c74419727b4fd74d598b6fbf5b1e8c31cd5ea1c7fa82ce3c0e90e6a6955115e2"

      def install
        bin.install "pswt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/devmegablaster/pastewut-cli/releases/download/v1.0.2/pastewut-cli_1.0.2_linux_arm64.tar.gz"
      sha256 "ee392c33a6202d5c0297601d0eb3076af7d0a0ea5da709418c653b5a061ab87f"

      def install
        bin.install "pswt"
      end
    end
  end
end
