class Ccs < Formula
  desc "Tiny Claude Code provider switcher"
  homepage "https://github.com/Ike-li/ccs"
  url "https://github.com/Ike-li/ccs/releases/download/v0.6.0/ccs-v0.6.0.tar.gz"
  sha256 "a71a0f0be4eff7d877cf536720ff97fa0c2d82d7b624e75f539f54460a4a5e4c"
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
