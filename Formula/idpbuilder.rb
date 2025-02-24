# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.9.0-nightly.20250224"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250224/idpbuilder-darwin-amd64.tar.gz"
      sha256 "a9dc1c3be3bde3bb9fb193f1076b6a9ef208d7271b46e2a541f169dbc8f381fb"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250224/idpbuilder-darwin-arm64.tar.gz"
      sha256 "6d1dc0d6efc3b31561f16abd542527e567ca9eef711720aa3e0afd65cddea9e3"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250224/idpbuilder-linux-amd64.tar.gz"
        sha256 "86aee2acc6465a28955aa9d89fdc335ec954b28f9ba9cfeeaa63f41dd9146d0d"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250224/idpbuilder-linux-arm64.tar.gz"
        sha256 "30eef440a02d1325bcb84116630c11613fb6029b2308cb867156f261ef1bb62d"

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
