require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.1/scnprojectsetup_1.6.1.tar.gz"
  sha256 "a6481e998398fdba359432fc4b7c05bf0d6b74199ad08642c85b0eb044eb78c2"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
