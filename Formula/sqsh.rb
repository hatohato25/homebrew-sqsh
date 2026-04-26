class Sqsh < Formula
  desc "A TUI MySQL client for fast database exploration with fuzzy search"
  homepage "https://github.com/hatohato25/sqsh"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "<sha256_of_aarch64_tarball>"
    end

    on_intel do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "<sha256_of_x86_64_tarball>"
    end
  end

  def install
    bin.install "sqsh"
  end

  test do
    system "#{bin}/sqsh", "--version"
  end
end
