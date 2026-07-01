class Sqsh < Formula
  desc "A TUI MySQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/sqsh/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "acc31ee723b7f73c28f3cdec18a63568836897f0564a67b38d9fad190aee3097"
    end

    on_intel do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1106bb78fc3782e779ecac5b3c5b465783c8ed9fc2a07ffdda4ea0863512e618"
    end
  end

  def install
    bin.install "sqsh"
  end

  test do
    system "#{bin}/sqsh", "--version"
  end
end
