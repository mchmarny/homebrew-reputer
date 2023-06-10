# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reputer < Formula
  desc "Vulnerability Import CLI"
  homepage "https://github.com/mchmarny/reputer"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/reputer/releases/download/v0.1.2/reputer_0.1.2_darwin_all"
    sha256 "98116b1d424ddb7d12e1e933569a0fca324a19cfa928e4a13b079f17b19b547d"

    def install
      bin.install "reputer_0.1.2_darwin_all" => "reputer"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/reputer/releases/download/v0.1.2/reputer_0.1.2_linux_arm64"
      sha256 "e3ea7c2162f30c67b0290d813a7db7db099883fc1f1fd67c7a350ca8fd428243"

      def install
        bin.install "reputer_0.1.2_linux_arm64" => "reputer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/reputer/releases/download/v0.1.2/reputer_0.1.2_linux_amd64"
      sha256 "3b5141078320f5cba4b7c1e6be35de5efaab6550f268d8997182d021c495c98e"

      def install
        bin.install "reputer_0.1.2_linux_amd64" => "reputer"
      end
    end
  end

  test do
    system "#{bin}/reputer" --version
  end
end
