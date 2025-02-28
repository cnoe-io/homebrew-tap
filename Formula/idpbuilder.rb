# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.10.0-nightly.20250228"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250228/idpbuilder-darwin-amd64.tar.gz"
      sha256 "5f51b05d49b2f60d9a50b7b2d53793c11bedf7fedb15b24379b56c60c9078f7c"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250228/idpbuilder-darwin-arm64.tar.gz"
      sha256 "769c4f37e3e36c4d26b4ae452de2ade6c4ab7d501140f3fcc9cbd0c8d978c8e6"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250228/idpbuilder-linux-amd64.tar.gz"
        sha256 "436333dffa03c296ef556c5a4b23af5fd7ba955bd84d5271e7b26064568aaf07"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250228/idpbuilder-linux-arm64.tar.gz"
        sha256 "9e952f8f9929d017b7fdccb79d24a96c648be1fffc4056dc1662debd947d5fb3"

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
