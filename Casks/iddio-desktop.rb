# typed: false
# frozen_string_literal: true

cask "iddio-desktop" do
  version "2026.518.1225"

  on_arm do
    sha256 "c82bcbb20bd9ababd678dd2235251a4cb5c8df694cc5d9da6c55ba9b464dbc9f"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0518.1225/iddio-desktop_v26.0518.1225_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "f64364f4eebbb93b8c2880db801c28ee933075d5cb683130f52c7e6944934a18"
    url "https://github.com/leonardaustin/iddio/releases/download/v26.0518.1225/iddio-desktop_v26.0518.1225_darwin_amd64.dmg"
  end

  name "Iddio"
  desc "Security gateway for AI agent access to Kubernetes and cloud APIs"
  homepage "https://iddio.dev"

  app "Iddio.app"

  zap trash: [
    "~/.iddio",
  ]
end
