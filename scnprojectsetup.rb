require "formula"

class Scnprojectsetup < Formula
  homepage "http://shortcutolso.no"
  url "https://github.com/scnbrew/homebrew-scnprojectsetup/raw/master/dist/scnprojectsetup_1.9.4/scnprojectsetup_1.9.4.tar.gz"
  sha256 "f6347d11f4bc143fdf539a12834b7c96093488d6c30fceb26f42dcdc71e85caf"

  def install
    # Remove unrecognized options if warned by configure
    system "make", "prefix=#{prefix}",
                   "install"
  end
end
