# typed: false
# frozen_string_literal: true

class Mozzy < Formula
  desc "Modern HTTP client for the terminal - a Postman alternative for JSON APIs"
  homepage "https://humancto.github.io/homebrew-mozzy/"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/humancto/homebrew-mozzy/releases/download/v2.2.0/mozzy_2.2.0_macos_amd64.tar.gz"
      sha256 "b46b193e6dcce6f7507dab701db23b2a317ebc578561549bfb2683510e56eb55"

      def install
        bin.install "mozzy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/humancto/homebrew-mozzy/releases/download/v2.2.0/mozzy_2.2.0_macos_arm64.tar.gz"
      sha256 "da8d1f3f8133f55dcb7ce4136008d7261007838ee3ba37a8a4be29004d32719d"

      def install
        bin.install "mozzy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/humancto/homebrew-mozzy/releases/download/v2.2.0/mozzy_2.2.0_linux_amd64.tar.gz"
      sha256 "9302f96aad3f11b812fddca8942086ce355d004ac7f93fa79a0f89ec6d427f84"
      def install
        bin.install "mozzy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/humancto/homebrew-mozzy/releases/download/v2.2.0/mozzy_2.2.0_linux_arm64.tar.gz"
      sha256 "d0992c8058736aed970a07ecda92d583c92bf3b25a9cdcefed34b18d41490518"
      def install
        bin.install "mozzy"
      end
    end
  end

  test do
    system "#{bin}/mozzy", "--version"
  end
end
