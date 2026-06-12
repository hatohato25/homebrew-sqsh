class Sqsh < Formula
  desc "A TUI MySQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/sqsh/"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f04c5a98a5ef4dbb3a716183730486e1f8136c3e925e0926268da82f757fa916"
    end

    on_intel do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6d960ab7c21a10c3734994d87d1f8d9b71fdbba933ecde71391c8ff48ecac74c"
    end
  end

  def install
    bin.install "sqsh"
  end

  test do
    system "#{bin}/sqsh", "--version"
  end
end
