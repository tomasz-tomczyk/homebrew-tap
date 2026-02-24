class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.5/crit-darwin-arm64"
      sha256 "8b9b56cb864be3f3c2800ebd0b0114890552399c50d61caff878aaec6ff34b47"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.5/crit-darwin-amd64"
      sha256 "d6838ea2bff5bbed00ac8be9365a270912d98a64f8627e429dbfa6d5bcb9e277"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.5/crit-linux-arm64"
      sha256 "16ed78e3c11128c2d6f31702bd7b84450412fa8ecad38f1e11ede29390c45e62"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.3.5/crit-linux-amd64"
      sha256 "c836953bd2d4e125e8bddeea58dc30f1df7e40ce5c0a01b3845716a886b3fac0"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.3.5", shell_output("#{bin}/crit --version").strip
  end
end
