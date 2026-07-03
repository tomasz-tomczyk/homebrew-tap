class Crit < Formula
  desc "Browser-based markdown review tool with inline commenting"
  homepage "https://github.com/tomasz-tomczyk/crit"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.1/crit-darwin-arm64"
      sha256 "df202f20283954c258e255e280509c994f656fdf83cd50b9a91940918fd3b5cd"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.1/crit-darwin-amd64"
      sha256 "9ec11251ad2b7867b8b7aba1322fd0badaf30cc4f917098ffa13462af985e94b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.1/crit-linux-arm64"
      sha256 "b15c412412b62f379f658ffcc53cf887c07d05730f68cd29bc080154d723cf3b"
    end
    on_intel do
      url "https://github.com/tomasz-tomczyk/crit/releases/download/v0.17.1/crit-linux-amd64"
      sha256 "5583fe848b67f116bfe94aa8d7d88e28d10bf0aaec27ba86b7dd69178defcb41"
    end
  end

  def install
    binary = Dir["crit-*"].first || "crit"
    bin.install binary => "crit"
  end

  test do
    assert_match "0.17.1", shell_output("#{bin}/crit --version").strip
  end
end
