# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.10.0-nightly.20250408"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250408/idpbuilder-darwin-amd64.tar.gz"
      sha256 "644c1ab590b33f5ca1601c77e4ca46932df88c55b264b5f98db6c1029188199f"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250408/idpbuilder-darwin-arm64.tar.gz"
      sha256 "248da5e5e19c4b509e2e072668027c72a352c0f7a9f17f2461fe24d5801de17d"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250408/idpbuilder-linux-amd64.tar.gz"
        sha256 "f4f8e0d7713f172cf67dd3acb0e7287321bcfce37c57a35b69fab5d00b7323fa"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250408/idpbuilder-linux-arm64.tar.gz"
        sha256 "002677fe675dfe2c05c1b55f0aa438889530078916b93368abbcd4681a828972"

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
