# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Semiuniq < Formula
  desc "A uniq-like tool for removing nearby repeated lines in a file""
  homepage ""
  url "https://github.com/kljensen/semiuniq/archive/v0.1.5.tar.gz"
  sha256 "45d6e9010995f1d531de6a5324e6f5e9d714c9b3334f4dee7b1f0f9ca7a11800"
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
