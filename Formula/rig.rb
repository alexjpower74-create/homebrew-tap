class Rig < Formula
  desc "Orchestration for a crew of AI coding agents working one repo at once"
  homepage "https://github.com/alexjpower74-create/rig"
  url "https://github.com/alexjpower74-create/rig/archive/refs/tags/v2.0.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
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
