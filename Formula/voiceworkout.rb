# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Voiceworkout < Formula
  desc "Walks you through a workout using a voice on your computer"
  homepage ""
  url "https://github.com/kljensen/voiceworkout/archive/v1.1.tar.gz"
  sha256 "8891a959d0d07dfa497fafbd81df49802b087605192247b477391964f7ff3113"
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
