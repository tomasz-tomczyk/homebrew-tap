class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.18.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.4/crit-darwin-arm64"
      sha256 "93cdd19e8cb29679bd2c4b9db7a55b7b15cd6f93b532220c736a5d20b6d5483d"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.4/crit-darwin-amd64"
      sha256 "0df7ab60f81139f41d4d353a47735fd82d437be835e6353570180efa359ed374"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.4/crit-linux-arm64"
      sha256 "f6e01ef154f2e5e500af0b8e477f8e568a174b42487679c0ec403ec418a4f812"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.18.4/crit-linux-amd64"
      sha256 "854a21d478a3e96e5a503fcdde7bdfd96193a0ee62517a2139dd4056e5c02958"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.18.4", shell_output("#{bin}/crit --version").strip
  end
end
