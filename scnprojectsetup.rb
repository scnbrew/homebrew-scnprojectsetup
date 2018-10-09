require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.5/scnprojectsetup_1.6.5.tar.gz"
  sha256 "1182d6dfa745cf8a491fe3ac12b6e11161fd82da8288a3b16f35b17db6120b08"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
