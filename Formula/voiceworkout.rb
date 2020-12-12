# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Voiceworkout < Formula
  desc "Walks you through a workout using a voice on your computer"
  homepage ""
  url "https://github.com/kljensen/voiceworkout/archive/v1.3.tar.gz"
  sha256 "bd8cea24005cb39716ad9236a69562881fa0e3a83a7d5f222f423f94b9d91e9b"
  license "Unlicense"

  depends_on "go" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    system "go", "build", "-mod", "vendor", "-o", "voiceworkout"
    bin.install "voiceworkout"
  end

  test do
    system "true"
  end
end
