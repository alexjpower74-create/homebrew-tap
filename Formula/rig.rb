class Rig < Formula
  desc "Orchestration for a crew of AI coding agents working one repo at once"
  homepage "https://github.com/alexjpower74-create/rig"
  url "https://github.com/alexjpower74-create/rig/archive/refs/tags/v3.0.0.tar.gz"
  sha256 "2d276bba1e7f5e66c59d16957a6bdc2b7db9f04e96a26eb69209985083eafe24"
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
