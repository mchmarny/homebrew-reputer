# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reputer < Formula
  desc "Vulnerability Import CLI"
  homepage "https://github.com/mchmarny/reputer"
  version "0.0.8"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/mchmarny/reputer/releases/download/v0.0.8/reputer_0.0.8_darwin_all"
    sha256 "c2fe9f017cd8bc394a212df1f14230f2e3a6cfad7fdc50a50ffdc3000f217622"

    def install
      bin.install "reputer_0.0.8_darwin_all" => "reputer"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mchmarny/reputer/releases/download/v0.0.8/reputer_0.0.8_linux_arm64"
      sha256 "73c08aa2ab6e05879a06cf83438aa7abf300fda0bf8577896dac7b3ca3a02258"

      def install
        bin.install "reputer_0.0.8_linux_arm64" => "reputer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mchmarny/reputer/releases/download/v0.0.8/reputer_0.0.8_linux_amd64"
      sha256 "1df0b4612ca38ee348eb199113400048cec62c5764017453118b2f1d4db8c521"

      def install
        bin.install "reputer_0.0.8_linux_amd64" => "reputer"
      end
    end
  end

  test do
    system "#{bin}/reputer" --version
  end
end
