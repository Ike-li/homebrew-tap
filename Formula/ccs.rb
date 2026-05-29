class Ccs < Formula
  desc "Tiny Claude Code provider switcher"
  homepage "https://github.com/Ike-li/ccs"
  url "https://github.com/Ike-li/ccs/releases/download/v0.5.0/ccs-v0.5.0.tar.gz"
  sha256 "81879f4c5b7891ea9917d6e1b02f5370701cfdcd8721de0c1db0be55981bc7ac"
  license "GPL-3.0-only"

  def install
    bin.install "ccs"
    bash_completion.install "completions/ccs.bash" => "ccs"
    zsh_completion.install "completions/_ccs"
    doc.install "README.md", "docs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccs --version")
    assert_match "ccs - Claude Code provider switcher", shell_output("#{bin}/ccs --help")
  end
end
