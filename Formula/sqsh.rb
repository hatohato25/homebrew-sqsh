class Sqsh < Formula
  desc "A TUI MySQL client for fast database exploration with fuzzy search"
  homepage "https://hatohato25.github.io/sqsh/"
  version "0.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f551534dad15d1a115052f837a8bcef9e678b83d3b6688fc73c3cce3608e99a9"
    end

    on_intel do
      url "https://github.com/hatohato25/sqsh/releases/download/v#{version}/sqsh-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "83713464157ed559fbc56a88724bc5f2dbe6fc567653d56358507d290055ada8"
    end
  end

  def install
    bin.install "sqsh"
  end

  test do
    system "#{bin}/sqsh", "--version"
  end
end
