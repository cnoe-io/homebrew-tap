# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.10.0-nightly.20250227"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250227/idpbuilder-darwin-amd64.tar.gz"
      sha256 "e86a20be8011cfcdde0a18d8a88816b468ec32d1385a819c899d1ff0df7719f6"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250227/idpbuilder-darwin-arm64.tar.gz"
      sha256 "234ad76cba55a20e29b4f3f12ff1e01c594fb3ca6b86e0dfea62d1333b563888"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250227/idpbuilder-linux-amd64.tar.gz"
        sha256 "ef1b8110ba0d454debdbc34c26582936aba6930c898b52bed78233fc9e096829"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250227/idpbuilder-linux-arm64.tar.gz"
        sha256 "16b62bec41ba53fa91b2a99f295871a82771655a91a6442af567925145d84940"

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
