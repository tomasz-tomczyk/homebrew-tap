class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.3/crit-darwin-arm64"
      sha256 "80fe78f03202fc2bde6f4dcebfc490176d27f2d15df0123b9c86d5ba611905c9"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.3/crit-darwin-amd64"
      sha256 "bf372c8f88c11c3c9981fbdb72041eb00c048ed183bd4fc07ba6953dfe97c8e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.3/crit-linux-arm64"
      sha256 "6d404d3697966aa327520aaa6ecb27931b28b79fa57f240b9b660836032e5214"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.15.3/crit-linux-amd64"
      sha256 "f84ad87932a20f3827153a7d516f67e3804abf18641a6533df3ebca059991c3c"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.15.3", shell_output("#{bin}/crit --version").strip
  end
end
