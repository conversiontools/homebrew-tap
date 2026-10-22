class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.0/ctio-darwin-arm64"
      sha256 "1325e9a3aa99b4677f15489c6dbb505e90eca69a2a564d1e31e24dadf35ff656"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.0/ctio-darwin-x64"
      sha256 "b57936ffaaf3dfe5da98154c81eb475362063467ce78bbae9c01f97aaac7ce49"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.5.0/ctio-linux-x64"
      sha256 "7b68d7f03e533e1fd19103e1dcbf794dc0a9c7a40817236381aa0d16435f0f36"
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
