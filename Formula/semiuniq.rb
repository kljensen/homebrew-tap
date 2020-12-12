# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Semiuniq < Formula
  desc "A uniq-like tool for removing nearby repeated lines in a file""
  homepage ""
  url "https://github.com/kljensen/semiuniq/archive/v0.1.4.tar.gz"
  sha256 "f2e50b5ba6817bc10919f8ea23be00e49f952c708876baa470429e1b86a021ac"
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
