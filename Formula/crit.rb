class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.1/crit-darwin-arm64"
      sha256 "2574b3bb80ff5731d28225634b66fbaad44a55760ebc18fb8002588a7ef2a9b5"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.1/crit-darwin-amd64"
      sha256 "8b6eadbfce69fe693ca3f93f71fdd3309429503bd81bd20977abaeb5999e6da6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.1/crit-linux-arm64"
      sha256 "0c09250ab7739a5ba4c7fd3a208c4f1d268c7679f3c06bd8f75a2ee3d0cafb0c"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.4.1/crit-linux-amd64"
      sha256 "75696904b4aa050daa35602a71117003c0357943a652ccb90e7aff24a90f08cd"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/crit --version").strip
  end
end
