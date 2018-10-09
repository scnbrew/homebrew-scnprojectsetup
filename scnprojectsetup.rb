require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.6.3/scnprojectsetup_1.6.3.tar.gz"
  sha256 "857679bf69a6ae489134a87367aadcb4dfecd08125ee4fd051af36b115ffe0f8"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
