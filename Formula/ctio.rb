class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.9.0/ctio-darwin-arm64"
      sha256 "645b15b6c06160e358352315da71d57f844dc260a65a4ffc1efcd283ba0d1e78"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.9.0/ctio-darwin-x64"
      sha256 "a161dbcf01b698c2b47754b12828a0504d241725e481fbe124ead3cbae91ad26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.9.0/ctio-linux-x64"
      sha256 "26a785b63b510f35f33e8676e5da72770a7bfdd1d083e0b21bc6c6118b0f9cc8"
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
