class Ccs < Formula
  desc "Tiny Claude Code provider switcher"
  homepage "https://github.com/Ike-li/ccs"
  url "https://github.com/Ike-li/ccs/releases/download/v0.8.0/ccs-v0.8.0.tar.gz"
  sha256 "180838da767e14cc3309befe5d35d838f8b66698ad2f80bab42f3d870874fc23"
  license "GPL-3.0-only"

  def install
    bin.install "ccs"
    bash_completion.install "completions/ccs.bash" => "ccs"
    zsh_completion.install "completions/_ccs"
    doc.install "README.md", "CHANGELOG.md", "CONTRIBUTING.md", "SECURITY.md", "docs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccs --version")
    assert_match "ccs - Claude Code provider switcher", shell_output("#{bin}/ccs --help")
  end
end
