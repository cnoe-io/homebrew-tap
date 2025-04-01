# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.10.0-nightly.20250401"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250401/idpbuilder-darwin-amd64.tar.gz"
      sha256 "cb0804c9c93dd5f7f4b0c45021693379b57f7ac8b4534ba4aedaf8d81b2e1a98"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250401/idpbuilder-darwin-arm64.tar.gz"
      sha256 "0edb0d4f5b25b29fe455b2c737e8b607d1ad12a3502259de029ad651c0ad0f0f"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250401/idpbuilder-linux-amd64.tar.gz"
        sha256 "e11c66eb16a9c04d6f7986ea1ea0ec3229aa6943b2099b03277a917ff372c054"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250401/idpbuilder-linux-arm64.tar.gz"
        sha256 "71d055040d662e016781ebcfcdc18cc96d381c9ca55984a381ec6aa3402e6d51"

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
