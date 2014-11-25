require "formula"

# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                /usr/local/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
<<<<<<< HEAD
<<<<<<< HEAD
  url "https://raw.githubusercontent.com/santonsen/homebrew-scnprojectsetup/master/dist/scnprojectsetup-0.0.1.tar.gz"
  sha1 ""
=======
  url "https://github.com/santonsen/homebrew-scnprojectsetup/blob/master/dist/scnprojectsetup-0.0.1.tar.gz"
  sha1 "41ae7b3c584ec7fca7589c96a7b031313b16df34"
>>>>>>> master
=======
  url "https://raw.githubusercontent.com/santonsen/homebrew-scnprojectsetup/master/dist/scnprojectsetup-0.0.1.tar.gz"
  sha1 ""
>>>>>>> master

  def install
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "python setup.py install"
  end
end
