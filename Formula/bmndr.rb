class Bmndr < Formula
  desc "Simple python CLI for beeminder.com"
  homepage "https://github.com/lydgate/bmndr"
  head "https://github.com/lydgate/bmndr.git"
  depends_on "python3"

  def install
    bin.install "bmndr"
  end
  
  test do
    assert_match("create a ~/.bmndrrc file",
      shell_output("#{bin}/bmndr || true"))
  end
end
