require "formula"

# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://raw.githubusercontent.com/santonsen/homebrew-scnprojectsetup/master/dist/scnprojectsetup-0.0.1.tar.gz"
  sha1 ""

  def install
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "python setup.py install"
  end
end
