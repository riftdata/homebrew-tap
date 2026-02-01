package Formula

# noinspection RubyResolve
class Rift < Formula
  desc "Instant, copy-on-write database branches for Postgres"
  homepage "https://github.com/riftdata/rift"
  version "0.0.1"
  license "Apache-2.0"

  # Placeholder until first release
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/riftdata/rift/releases/download/v#{version}/rift_#{version}_darwin_arm64.tar.gz"
      sha256 "81b87e94338bb48c2b4b0d516344a8fd22929df9db5775e8e69576bb736052c3"
    else
      url "https://github.com/riftdata/rift/releases/download/v#{version}/rift_#{version}_darwin_amd64.tar.gz"
      sha256 "1cf74019d0865746897dce40baf383d8572b6d11cea86e1441ddb1da423946b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/riftdata/rift/releases/download/v#{version}/rift_#{version}_linux_arm64.tar.gz"
      sha256 "39045c7070f40c0dfa846fc372eabee4f841acc04fc3939781ceaa9087817de1"
    else
      url "https://github.com/riftdata/rift/releases/download/v#{version}/rift_#{version}_linux_amd64.tar.gz"
      sha256 "4028d83f27782aa873baa1c84a9de869f56f3ddf2a60baca8bb4f3ff20375fdf"
    end
  end

  def install
    bin.install "rift"
  end

  test do
    system "#{bin}/rift", "version"
  end
end
