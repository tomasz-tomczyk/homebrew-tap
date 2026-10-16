class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.0/crit-darwin-arm64"
      sha256 "f5dadb8ea4a680492f284772bfb9e54a1eaea57d9d4e672662278af7aa4fbd42"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.0/crit-darwin-amd64"
      sha256 "09ce12e03e7e26126c78072acfa59962032ada0a924ac8a74930c94fff184bd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.0/crit-linux-arm64"
      sha256 "3c9a8f11ae3c59fc854f7948ecf4f33f17164d8a4c6afa3fde997c8b153f25bd"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.23.0/crit-linux-amd64"
      sha256 "5a953161443fb3c9304a543ff8ca3e07e9a2522b831e3cf2b63c9ed1a01e6902"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.23.0", shell_output("#{bin}/crit --version").strip
  end
end
