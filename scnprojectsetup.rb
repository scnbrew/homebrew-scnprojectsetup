require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.8.0/scnprojectsetup_1.8.0.tar.gz"
  sha256 "73150de63a3f87be4fbe2a908a55b0dd66a06c4cc1e3c3ec3497d02048523f4f"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
