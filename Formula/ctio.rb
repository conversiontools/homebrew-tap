class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.6.1/ctio-darwin-arm64"
      sha256 "50a1bb5ffdba9b546310bfe419998174cbf6378a45d0a6c26c88d3828b913d3b"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.6.1/ctio-darwin-x64"
      sha256 "dd6ecc4c5892be7144e7311401ff74b6da18e7da197a9bf9fe02c8f8ea1e1112"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.6.1/ctio-linux-x64"
      sha256 "c0de19022c4386b072d8deaa4275984002d78eeeda1c800650a38d81398e22e4"
    end
  end

  def install
    binary = Dir["ctio-*"].first
    chmod 0755, binary
    bin.install binary => "ctio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ctio --version")
  end
end
