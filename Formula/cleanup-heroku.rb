# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class CleanupHeroku < Formula
  desc "A portable, POSIX-compliant shell script to delete old, unused Heroku applications"
  homepage "https://github.com/kljensen/cleanup-heroku/"
  url "https://github.com/kljensen/cleanup-heroku/archive/v0.1.0.tar.gz"
  sha256 "c108768c9a84a3ac83d1af59d55454aa4b93b62d25d5d5d4ddb9f3e31fe15109"
  license ""

  def install
    bin.install "cleanup-heroku.sh" => "cleanup-heroku"
  end
end
