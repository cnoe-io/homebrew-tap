# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.10.0-nightly.20250321"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250321/idpbuilder-darwin-amd64.tar.gz"
      sha256 "3ad0c55202cf3a37ea5fa5f637e21bc144e22efd0f7ff9cbaaf0d650b130bfbc"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250321/idpbuilder-darwin-arm64.tar.gz"
      sha256 "84456cf25fa5f581d0bf932929f58b631f42b14a81263890174792cc4db81298"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250321/idpbuilder-linux-amd64.tar.gz"
        sha256 "fea985805ce2c742774a563b52e6830a28602eb204bc2e7d821424f42d315529"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.10.0-nightly.20250321/idpbuilder-linux-arm64.tar.gz"
        sha256 "ef36c6f933ecf114e2b4362dd5b2224d902bdcd790ad2f6be78320675036d4ad"

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
