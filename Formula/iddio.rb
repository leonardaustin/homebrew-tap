# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "2026.0326.1537"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0326.1537/iddio_2026.0326.1537_darwin_amd64.tar.gz"
      sha256 "6e57e378340c0a7331266f99474cbd89cd0c78f805c48ba98ee30f67d9583989"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0326.1537/iddio_2026.0326.1537_darwin_arm64.tar.gz"
      sha256 "423f34b53add9f8323918efca3e0d2ad35b3763c05e6b2e2aff407b7c870d437"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0326.1537/iddio_2026.0326.1537_linux_amd64.tar.gz"
      sha256 "4e2b8cd27e30a790ce242d1baebbf5dc8381dec2985be68b8a0ea0dee251a718"
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v2026.0326.1537/iddio_2026.0326.1537_linux_arm64.tar.gz"
      sha256 "0b20baccad34c3b21f2c6b612554d13e38894baabd7cce6e22e6c0ef7c7a282d"
    end
  end

  def install
    bin.install "iddio"
  end
end
