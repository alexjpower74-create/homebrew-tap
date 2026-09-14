class Rig < Formula
  desc "Orchestration for several Claude Code sessions working one repo at once"
  homepage "https://github.com/alexjpower74-create/rig"
  url "https://github.com/alexjpower74-create/rig/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5f0603eacd3f78fe117f3b22e5b41ecac68f18d9a4d9493903440c8de8789a93"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rig --version")
    assert_match "multi-agent build orchestration", shell_output("#{bin}/rig --help")
  end
end
