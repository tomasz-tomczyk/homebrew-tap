class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.1/crit-darwin-arm64"
      sha256 "9fe1e341108a50e7f8210f833565468b2c733477a4e3e302a91bc5803a51bbda"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.1/crit-darwin-amd64"
      sha256 "9e757c07a7116b5c24644ec8aa6d3f1478b040491d2b0d6201ee0e306e4095bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.1/crit-linux-arm64"
      sha256 "f95f18342c7e52100bf568ad159d646ccbda5ff114670637f148a4467c0e784d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.1/crit-linux-amd64"
      sha256 "f977bdc16527bd8619e6f7d18b72cd9865513581eb005d5ace9f287156efc225"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.18.1", shell_output("#{bin}/crit --version").strip
  end
end
