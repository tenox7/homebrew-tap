class Ttycity < Formula
  desc "Micropolis (SimCity) for the terminal, using ncurses"
  homepage "https://github.com/tenox7/ttycity"
  url "https://github.com/tenox7/ttycity/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "fa2f51216055bf2a827ed2f3ccd6dc1f712707d5e5d1c9306398a8d9dfa769cb"
  license "GPL-3.0-or-later"

  def install
    system "make", "-C", "src"
    bin.install "src/ttycity"
  end

  test do
    ENV["TERM"] = "xterm-256color"
    system bin/"ttycity", "-shot", "shot.txt", "-frames", "3", "-gfx", "ascii"
    assert_match "Micropolis", (testpath/"shot.txt").read
  end
end
