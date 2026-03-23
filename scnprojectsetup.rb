require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.4/scnprojectsetup_1.9.4.tar.gz"
  sha256 "ed73affef06b56827170a5bf79752f1d990f202c55e6c8c2a1f4b7f97379bee4"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
