class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.16.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.5/crit-darwin-arm64"
      sha256 "6baca675044c3651d10c5d5b11951ed392317e9a0ea301bbcac396e4703d4c70"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.5/crit-darwin-amd64"
      sha256 "a4933f05f902c98601357a870fe740700eabbaf7aaeea506424aef72ba466d23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.5/crit-linux-arm64"
      sha256 "6a2fcaabddf5000647b7dc148bb7069faba290adcc50e7db26d0179f0f2394d6"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.16.5/crit-linux-amd64"
      sha256 "2c162e15d75083afa5f7e8a7a399fa28dab699269e4ae66980bd207b0b222e84"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.16.5", shell_output("#{bin}/crit --version").strip
  end
end
