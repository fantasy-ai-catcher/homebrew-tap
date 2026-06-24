class Hychat < Formula
  desc "Terminal chat with Supabase-backed rooms and stock quotes"
  homepage "https://github.com/fantasy-ai-catcher/hychat"
  url "https://github.com/fantasy-ai-catcher/hychat/releases/download/v0.5.0/hychat-0.5.0.tgz"
  sha256 "ac42fe31038f103795365afb0d89012cd8c0a13dc664a10b057e23d1c1514f9d"
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
