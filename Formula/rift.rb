package Formula

class Rift < Formula
  desc "Instant, copy-on-write database branches for Postgres"
  homepage "https://github.com/riftdb/rift"
  version "0.0.1"
  license "Apache-2.0"

  # Placeholder until first release
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riftdb/rift/releases/download/v#{version}/rift_#{version}_darwin_arm64.tar.gz"
      sha256 "TODO"
    else
      url "https://github.com/riftdb/rift/releases/download/v#{version}/rift_#{version}_darwin_amd64.tar.gz"
      sha256 "TODO"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/riftdb/rift/releases/download/v#{version}/rift_#{version}_linux_arm64.tar.gz"
      sha256 "TODO"
    else
      url "https://github.com/riftdb/rift/releases/download/v#{version}/rift_#{version}_linux_amd64.tar.gz"
      sha256 "TODO"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "version"
  end
end
