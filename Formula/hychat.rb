class Hychat < Formula
  desc "Terminal chat with Supabase-backed rooms and stock quotes"
  homepage "https://github.com/fantasy-ai-catcher/hychat"
  url "https://github.com/fantasy-ai-catcher/hychat/releases/download/v0.8.0/hychat-0.8.0.tgz"
  sha256 "dc4d92e7fce7dc58e91c31c90817be686e4a007b8d339eaba4a1498931fd6504"
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
