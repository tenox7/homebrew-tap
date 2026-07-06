class Ttycity < Formula
  desc "Micropolis (SimCity) for the terminal, using ncurses"
  homepage "https://github.com/tenox7/ttycity"
  url "https://github.com/tenox7/ttycity/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3952f2e131c39e97716947007c982bb84e69d9bcd2de681f616b5a0f58618637"
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
