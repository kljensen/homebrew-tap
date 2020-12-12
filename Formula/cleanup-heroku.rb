# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class CleanupHeroku < Formula
  desc "A portable, POSIX-compliant shell script to delete old, unused Heroku applications"
  homepage "https://github.com/kljensen/cleanup-heroku/"
  url "https://github.com/kljensen/cleanup-heroku/archive/v0.1.1.tar.gz"
  sha256 "1f110adf3f1260fcea133e028e5ead815c3819c3e85ea1479bf448f9ba468b08"
  license "Unlicense"

  def install
    bin.install "cleanup-heroku.sh" => "cleanup-heroku"
  end
end
