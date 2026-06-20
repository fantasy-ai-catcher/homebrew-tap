class Hychat < Formula
  desc "Terminal chat with Supabase-backed rooms and stock quotes"
  homepage "https://github.com/fantasy-ai-catcher/hychat"
  url "https://github.com/fantasy-ai-catcher/hychat/releases/download/v0.3.0/hychat-0.3.0.tgz"
  sha256 "fe8d48294090289765b46c23aae9f59758f6eb1d1bae23465f95aab68d9be24b"
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
