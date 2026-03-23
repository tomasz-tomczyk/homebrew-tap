class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.7.0/crit-darwin-arm64"
      sha256 "611692bd4564b5f970f883950d763c4a6acc75cba26f23b231843ca53dd236ec"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.7.0/crit-darwin-amd64"
      sha256 "dad2881e1d6c9b9c13d9b27d4b6121db2e09447b618783c984f7e82fbe9c2127"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.7.0/crit-linux-arm64"
      sha256 "4e8f798f28bc3c8d595bbbb2b0137900eaedaef94df2dff075337151d7a15a98"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.7.0/crit-linux-amd64"
      sha256 "5d85d0c017a634aefcf447ae4d824fe9d160f2b63c4c1fbd8ec43f8ff63ca4a0"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/crit --version").strip
  end
end
