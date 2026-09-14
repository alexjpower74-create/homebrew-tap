class Sightline < Formula
  desc "Audits a small-business website the way its owner experiences it; never invents a number"
  homepage "https://github.com/alexjpower74-create/sightline"
  url "https://github.com/alexjpower74-create/sightline/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "01226ecfcc589d621a026919c65f0b40c8188f4c74ba9c3a3e3600936225a8a9"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "sightline", shell_output("#{bin}/sightline --help", 2)
  end
end
