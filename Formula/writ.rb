class Writ < Formula
  desc "Local-first ledger of the steering you give coding agents"
  homepage "https://github.com/tomasz-tomczyk/writ"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/writ/releases/download/v0.1.0/writ-darwin-arm64"
      sha256 "91dca214743581c806c590b21f714d3765b009d10dfef5407bacfdf0fc9c0212"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/writ/releases/download/v0.1.0/writ-darwin-amd64"
      sha256 "cd3276aed9e1a723aeee664a357c9b094e6c7ecd700add7017ab007c25abaae0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/writ/releases/download/v0.1.0/writ-linux-arm64"
      sha256 "6dd1b1ec24c2fb5b33f426c5cf524bae040473eea6513b7d72e1bf2f99e60b59"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/writ/releases/download/v0.1.0/writ-linux-amd64"
      sha256 "75daca3a49452f0d8ca68182ce8e328009eaa837bc80f8e48e08ba14a51df3d6"
    end
  end

  def install
    binary = Dir["writ-*"].first || "writ"
    bin.install binary => "writ"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/writ --version").strip
  end
end
