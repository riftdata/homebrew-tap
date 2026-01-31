package Formula
class Pgbranch < Formula
  desc "Instant, copy-on-write database branches for Postgres"
  homepage "https://github.com/pgbranch/pgbranch"
  version "0.0.1"
  license "Apache-2.0"

  # Placeholder until first release
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pgbranch/pgbranch/releases/download/v#{version}/pgbranch_#{version}_darwin_arm64.tar.gz"
      sha256 "TODO"
    else
      url "https://github.com/pgbranch/pgbranch/releases/download/v#{version}/pgbranch_#{version}_darwin_amd64.tar.gz"
      sha256 "TODO"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pgbranch/pgbranch/releases/download/v#{version}/pgbranch_#{version}_linux_arm64.tar.gz"
      sha256 "TODO"
    else
      url "https://github.com/pgbranch/pgbranch/releases/download/v#{version}/pgbranch_#{version}_linux_amd64.tar.gz"
      sha256 "TODO"
    end
  end

  def install
    bin.install "pgbranch"
  end

  test do
    system "#{bin}/pgbranch", "version"
  end
end
