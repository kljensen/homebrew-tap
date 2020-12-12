# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class CleanupHeroku < Formula
  desc "A portable, POSIX-compliant shell script to delete old, unused Heroku applications"
  homepage "https://github.com/kljensen/cleanup-heroku/"
  url "https://github.com/kljensen/cleanup-heroku/archive/v0.1.2.tar.gz"
  sha256 "487549f3d43e7d80a58f4d13b880a3c00a935e5969d8e953276caf86c33656e5"
  license "Unlicense"

  def install
    bin.install "cleanup-heroku.sh" => "cleanup-heroku"
  end
end
