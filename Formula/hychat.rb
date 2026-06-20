class Hychat < Formula
  desc "Terminal chat with Supabase-backed rooms and stock quotes"
  homepage "https://github.com/fantasy-ai-catcher/hychat"
  url "https://github.com/fantasy-ai-catcher/hychat/releases/download/v0.1.0/hychat-0.1.0.tgz"
  sha256 "2c727ebd529c774b5fc5d02e42df69cf6000db18735dab80e5bc843b6bc23474"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hychat --version")
  end
end
