require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.6/scnprojectsetup_1.6.6.tar.gz"
  sha256 "5e4e9cc3522c0be832839908edcd9299d0fc0c0c7606da7baac693a890c722e5"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
