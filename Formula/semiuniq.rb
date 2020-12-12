# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Semiuniq < Formula
  desc "A uniq-like tool for removing nearby repeated lines in a file""
  homepage ""
  url "https://github.com/kljensen/semiuniq/archive/0.1.0.tar.gz"
  sha256 "e853731bd3d1b51112376fe65d044198e0637a995583a5005b588deea22dfe00"
  license ""

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "semiuniq"
    bin.install "target/release/semiuniq"
  end

  test do
    system "true"
  end
end
