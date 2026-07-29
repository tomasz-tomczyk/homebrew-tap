class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.18.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.2/crit-darwin-arm64"
      sha256 "9fc43beb1f323998b39b7ee6f76623ee46a7ca07859183aefb4deecbc09b264d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.2/crit-darwin-amd64"
      sha256 "b34f39beeb97743239cbc3a0ae077cda078c7191879aee3b3bbfe5d355233c2c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.2/crit-linux-arm64"
      sha256 "2d84b30af3961fe67cfd017235ce79404ef6ffda37928e02d651ea38bff15aad"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.2/crit-linux-amd64"
      sha256 "897b6e8802f9dfcf09f855b409604a1b68e5e26061934591b0565c2099cf1022"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.18.2", shell_output("#{bin}/crit --version").strip
  end
end
