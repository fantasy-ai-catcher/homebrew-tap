class Hychat < Formula
  desc "Terminal chat with Supabase-backed rooms and stock quotes"
  homepage "https://github.com/fantasy-ai-catcher/hychat"
  url "https://github.com/fantasy-ai-catcher/hychat/releases/download/v0.2.0/hychat-0.2.0.tgz"
  sha256 "5a97501be269a2d60891e263db6299e790536f0d5bcd7e969eec48048211c41d"
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
