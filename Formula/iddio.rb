# typed: false
# frozen_string_literal: true

class Iddio < Formula
  desc "Security gateway for AI agent access to Kubernetes clusters"
  homepage "https://iddio.dev"
  version "26.0603.1115"

  on_macos do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-cli-darwin-amd64.tar.gz"
      sha256 "7ce21a906cfc511208ac0dd2fe6a0a7ff45195b9aa5e09ce5b22ea7ab687eaa9"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-daemon-darwin-amd64.tar.gz"
        sha256 "1280cd38f8f2ae70222c4b9d7a0f3437e92f0ada369daf8a678d2f8a1c0c7edf"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-cli-darwin-arm64.tar.gz"
      sha256 "defc886aac4d97074fc6f785c13288ae2e422f8856c4113d5372241aebbcc30b"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-daemon-darwin-arm64.tar.gz"
        sha256 "f5c13d0b358e789433ce7b7929733e14306a9bd602781dd3ab459698ba435680"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-cli-linux-amd64.tar.gz"
      sha256 "d54181ece808b1dc532acfa9c78858a34e92d0ea33da483842313ea30c797459"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-daemon-linux-amd64.tar.gz"
        sha256 "de7857467420fa64c60f6ace2f59506dc26155ebe6a415dc98c99c68eb6b1f9c"
      end
    end
    on_arm do
      url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-cli-linux-arm64.tar.gz"
      sha256 "a89ab924b6061373c07b76502bbea7e2e9e3e00a979b5ec98f67e78b378db502"

      resource "iddio-daemon" do
        url "https://github.com/leonardaustin/iddio/releases/download/v26.0603.1115/iddio-daemon-linux-arm64.tar.gz"
        sha256 "484d63e06f74c0b11d3739cca65e676cbfe32c8865cbcc4bfaf6ced21bb6b0a9"
      end
    end
  end

  def install
    bin.install "iddio"
    resource("iddio-daemon").stage { bin.install "iddio-daemon" }
  end

  test do
    assert_match "iddio-local", shell_output("#{bin}/iddio version 2>&1")
  end
end
