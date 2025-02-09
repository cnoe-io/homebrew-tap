# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.9.0-nightly.20250129"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250129/idpbuilder-darwin-amd64.tar.gz"
      sha256 "732d5d844a8f6ebaa3c422220595d821e020c3ffa763f748df2836e67d309489"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250129/idpbuilder-darwin-arm64.tar.gz"
      sha256 "7446ef46abf583f6070d95268ee91a944682858f97d5318eeb895df4027dd476"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250129/idpbuilder-linux-amd64.tar.gz"
        sha256 "9287a6d54171bbe845d733a8958ff802c1d274151af5c877fe340683059b4f5d"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250129/idpbuilder-linux-arm64.tar.gz"
        sha256 "34105c1289ebae99b3e91f50e48d83575af67787ff1f1fd7a8da44021cdbd414"

        def install
          bin.install "idpbuilder"
        end
      end
    end
  end

  test do
    system "#{bin}/idpbuilder --version"
  end
end
