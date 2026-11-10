class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.8.0/ctio-darwin-arm64"
      sha256 "bf84390ed2cd611f6cd1d4370bae14bf252c531f4cdc8a728094a624caff49d2"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.8.0/ctio-darwin-x64"
      sha256 "e0cce8aeac3dc983abc8bc645ea4005835c198004d8bb8e5bae6f7046ee6bcd4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.8.0/ctio-linux-x64"
      sha256 "2a7be0a3f75c3f46a293b6f417603835856598e5c10c3fc1b9dcc99be63776d3"
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
