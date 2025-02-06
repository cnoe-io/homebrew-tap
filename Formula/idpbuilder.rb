# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.9.0-nightly.20250206"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250206/idpbuilder-darwin-amd64.tar.gz"
      sha256 "1da3e657f1a0ea643c2d86419cfaef093dbfd828217c14df35cbaf5c7c34116b"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250206/idpbuilder-darwin-arm64.tar.gz"
      sha256 "238f759146c23311f8cd38fb59a751cb7f0d105a6e8ee3e76bc1edd39ad04c76"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250206/idpbuilder-linux-amd64.tar.gz"
        sha256 "001a71e1452dd4acad725712e7bedc91053a2417a6e3ba3f0315f172a07879db"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250206/idpbuilder-linux-arm64.tar.gz"
        sha256 "ad57d67ee824b31118ecf3eda372892b325d4e0d1383805fbc5e108823f257df"

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
