class Whatidid2 < Formula
  include Language::Python::Virtualenv

  desc "AI work digest — summarizes sessions across Hermes, Claude Code, Codex, Copilot, and more"
  homepage "https://github.com/th0mps0nty/whatidid"
  url "https://files.pythonhosted.org/packages/81/59/adf636e43e33897cdd94c4269c0887ace59b9a6ef08d2dcc42c59ce9130b/whatidid2-1.0.1.tar.gz"
  sha256 "6c5131671f02940f628874d22d326dcbd06ee7152251abc7b5fd1d81be28d186"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage", shell_output("#{bin}/whatidid2 --help 2>&1", 0)
  end
end
