# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.10.0-nightly.20250403"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250403/idpbuilder-darwin-amd64.tar.gz"
      sha256 "90da77344434891aaa0ff23961883cf4075db8f54866e540758057e76dce0c7a"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250403/idpbuilder-darwin-arm64.tar.gz"
      sha256 "5e83851faeaf56d516d685ece954f756ce40b04ef1c4e2fb4590bc51a5c25aa1"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250403/idpbuilder-linux-amd64.tar.gz"
        sha256 "2e5600ceb1509e398755355e778628041d2ee5419ac4b4b3a4b0e84590ef4958"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250403/idpbuilder-linux-arm64.tar.gz"
        sha256 "560392b7b71bdf70aa931f075db2d7d699099cbac0ff8dd25fdd0fab0d0d8d73"

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
