# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Idpbuilder < Formula
  desc ""
  homepage "https://cnoe.io"
  version "0.9.0-nightly.20250211"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250211/idpbuilder-darwin-amd64.tar.gz"
      sha256 "83fa5408bb918b8f82d527879aa2165ece8d2416d12cadac5994b6acdfbfe406"

      def install
        bin.install "idpbuilder"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250211/idpbuilder-darwin-arm64.tar.gz"
      sha256 "75a7d28c800ddf6bf3d35afdd66a036fa03f12c026f78584be81645df3e2a516"

      def install
        bin.install "idpbuilder"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250211/idpbuilder-linux-amd64.tar.gz"
        sha256 "043bc4f15e9b17ce8b6adf21a013cfb67951ceda2be209d25f31d5ef34a03337"

        def install
          bin.install "idpbuilder"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cnoe-io/idpbuilder/releases/download/v0.9.0-nightly.20250211/idpbuilder-linux-arm64.tar.gz"
        sha256 "cc1bd00b16d0f8d45eb528e40e920eb012328d318a52f948c274bf926336be08"

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
