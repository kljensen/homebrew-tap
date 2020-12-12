# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class S3clipboard < Formula
  desc "A shared clipboard to copy and paste between machines using S3"
  homepage ""
  url "https://github.com/kljensen/s3clipboard/archive/v0.1.0.tar.gz"
  sha256 "4631bfef55687d8ee916d27379a497f241d4315839dd8d6de9950abe2852556d"
  license "Unlicense"


  def install
      bin.install "s3clipboard" => "s3clipboard"
  end

  test do
    system "#{bin}/s3clipboard", "-v"
  end
end
