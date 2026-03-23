require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.4/scnprojectsetup_1.9.4.tar.gz"
  sha256 "7dd45c42d9886a47cbd9af496a0633772f99ab91ebb4b44862be95f50156bca7"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
