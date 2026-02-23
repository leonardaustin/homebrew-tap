# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "2026.0223.1833"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0223.1833/iddio_2026.0223.1833_darwin_amd64.tar.gz"
      sha256 "0c5ee295dc97a0eb92de4f8537cf6f63c99e6e764eee1b1c5c04583a9d82c444"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0223.1833/iddio_2026.0223.1833_darwin_arm64.tar.gz"
      sha256 "34c58bcdddce024fab332146a272cf1eafc18f3c543c8381034e05df618aba3a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0223.1833/iddio_2026.0223.1833_linux_amd64.tar.gz"
      sha256 "5542dfee7016da1cebb9ed6839c77200155698325041665396e443f6d05818a3"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0223.1833/iddio_2026.0223.1833_linux_arm64.tar.gz"
      sha256 "b790980a564a9d3c1811712ea1dcfbeda58f880136e3e92a0c0045a72ce6a17e"
    end
  end

  def install
    bin.install "iddio"
  end
end
