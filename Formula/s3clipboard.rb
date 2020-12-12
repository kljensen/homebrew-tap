# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class S3clipboard < Formula
  desc "A shared clipboard to copy and paste between machines using S3"
  homepage ""
  url "https://github.com/kljensen/s3clipboard/archive/v0.1.3.tar.gz"
  sha256 "e7adead5b5e0edfc115ec079e07564459f446cfbe87bbe257ffaf86409ae82de"
  license "Unlicense"


  def install
      bin.install "s3clipboard" => "s3clipboard"
  end

  test do
    system "#{bin}/s3clipboard", "-v"
  end
end
