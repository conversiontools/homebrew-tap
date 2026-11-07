class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.0/ctio-darwin-arm64"
      sha256 "380e5e95f8682311cfcf42f84ebbdfbf18c086ff0df039c38f969848c7e71b69"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.0/ctio-darwin-x64"
      sha256 "86bee51c1a771e27da0479a73aad2b1a3511a6556ea89ff498672e672b902cd6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.0/ctio-linux-x64"
      sha256 "dee20409b14774d7bfb597a50179a4a1c4cb112a05d9a08f8328e3673c45a9f2"
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
