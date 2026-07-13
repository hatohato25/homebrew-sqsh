class Sqsh < Formula
  desc "A TUI MySQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/sqsh/"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3153ac2c7448b68e31ca637f08d152036bfa8fa096a7498a9d552d79d908396f"
    end

    on_intel do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "90d00b2eccd3aa5abe92a612d68814ec0ee6fdc9b3fc6313427e1a87e9c1ed1b"
    end
  end

  def install
    bin.install "sqsh"
  end

  test do
    system "#{bin}/sqsh", "--version"
  end
end
