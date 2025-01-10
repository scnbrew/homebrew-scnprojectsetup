require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.8.2/scnprojectsetup_1.8.2.tar.gz"
  sha256 "e298df6bed363be67d694768f385fe28ac8e59749fb9971691741f400b8c0d5e"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
