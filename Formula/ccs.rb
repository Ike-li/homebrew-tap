class Ccs < Formula
  desc "Tiny Claude Code provider switcher"
  homepage "https://github.com/Ike-li/ccs"
  url "https://github.com/Ike-li/ccs/releases/download/v0.6.1/ccs-v0.6.1.tar.gz"
  sha256 "8e9b5b1569f6b48992f4ebc559ba8e5415451022c20385a845f8106199ff37ec"
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
