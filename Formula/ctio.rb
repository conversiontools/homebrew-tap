class Ctio < Formula
  desc "Composable CLI for the Conversion Tools API"
  homepage "https://github.com/conversiontools/ctio"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.1/ctio-darwin-arm64"
      sha256 "47c34399ed6b8baf585f6aefca9d2e6b96ca82bb87e98a0056be86b8ac8bd9c0"
    end
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.1/ctio-darwin-x64"
      sha256 "0338b106a12f9f1b60539e3fe1496ad71b1720920a6f8ba39a1bd2c809850c18"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/conversiontools/ctio/releases/download/v0.7.1/ctio-linux-x64"
      sha256 "3134949349afaf63afc6765ff98ac37b95d29028779c7a11b73a48d8a0e9419a"
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
