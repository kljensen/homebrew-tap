# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Semiuniq < Formula
  desc "A uniq-like tool for removing nearby repeated lines in a file"
  homepage "https://github.com/kljensen/semiuniq/"
  url "https://github.com/kljensen/semiuniq/archive/v0.1.6.tar.gz"
  sha256 "e9b45364f16f136ef575ef07f58aaeeb562da7faddba73d46426bb2e68bfb887"
  license "Unlicense"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release", "--bin", "semiuniq"
    bin.install "target/release/semiuniq"
  end

  test do
    system "true"
  end
end
