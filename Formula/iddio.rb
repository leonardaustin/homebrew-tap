# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "2026.0224.0009"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0224.0009/iddio_2026.0224.0009_darwin_amd64.tar.gz"
      sha256 "88bbac10384a035caaa1cbf0dfc3c4016b49261ee7552a93270aa4b1b2247cb7"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0224.0009/iddio_2026.0224.0009_darwin_arm64.tar.gz"
      sha256 "e7d90ed701f53766f01588e7fa4c099ec46f74cac76e746d528c6a0c6750f5e6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0224.0009/iddio_2026.0224.0009_linux_amd64.tar.gz"
      sha256 "aa99e3eb5dabef14aa699dad61be1a833335c1cfab88a8290ef7db6ba0c33599"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0224.0009/iddio_2026.0224.0009_linux_arm64.tar.gz"
      sha256 "11b0a5b76964dba611e57e88e6deb57175f7adb12f197949c3cbb439d7a510cc"
    end
  end

  def install
    bin.install "iddio"
  end
end
