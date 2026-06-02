class Whatidid2 < Formula
  include Language::Python::Virtualenv

  desc "AI work digest — summarizes sessions across Hermes, Claude Code, Codex, Copilot, and more"
  homepage "https://github.com/th0mps0nty/whatidid"
  url "https://files.pythonhosted.org/packages/2a/e2/db65f3148923f2c20e31d5aaa8988646a59f3fc6e84589474f3db5461d74/whatidid2-1.0.0.tar.gz"
  sha256 "bb3a45b72111888910099423536d530c9a3be802cf9760a4f2a589b058e0953c"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/whatidid2 --help 2>&1", 0)
  end
end
