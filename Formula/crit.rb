class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.0/crit-darwin-arm64"
      sha256 "106c217cb6c067cb1304f2a2e02e1fef21ba644f2fe87523b7b9c725d4d7b88f"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.0/crit-darwin-amd64"
      sha256 "81f3a8b6a5b80c7416bf3404c54fa29c20447faa60e4aac58e06175391026746"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.0/crit-linux-arm64"
      sha256 "8d8e3c0bc23f92b370660e512a97fe30353c87844aff9b30f6ca99a3526d9b4b"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.1.0/crit-linux-amd64"
      sha256 "6b5fe63b0342d3f789e3d41413cb4aeca1b277edec33cb7029478c48ccf00859"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/crit --version").strip
  end
end
