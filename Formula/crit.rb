class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.10.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.5/crit-darwin-arm64"
      sha256 "0324931e3e5f60b896df84d0a319043dd803e3be1cfe857a8bcd954633898840"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.5/crit-darwin-amd64"
      sha256 "8d192d6c1a901fbb1b1d56b8d48764555b8db8ddc52b8ee49483b896ce9f8d8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.5/crit-linux-arm64"
      sha256 "4c0eec509c1c66e7cd1c7a127bfc3b4a4c14b5a2c5701ed8a5c7826dab085eda"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.10.5/crit-linux-amd64"
      sha256 "06c853f736ed4e2237e3335ae0269e1084575efa456f2af55f02013a4a749fd4"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.10.5", shell_output("#{bin}/crit --version").strip
  end
end
