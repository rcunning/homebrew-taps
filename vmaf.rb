class Vmaf < Formula
  desc "Perceptual video quality assessment based on multi-method fusion."
  homepage "https://github.com/Netflix/vmaf#usage-through-libvmaf"
  url "https://github.com/rcunning/homebrew-taps/raw/master/archive/vmaf-1.0.0.tar.xz"
  sha256 "224e6d040d3418dab48709309b7a74031e8733e4f3c0c2d7776513c6a8877beb"
  version "1.0.0"
  head "https://github.com/Netflix/vmaf.git"

  depends_on "pkg-config" => :build
  depends_on "gcc" => :build

  def install
    system "make"
    system "make", "install", "INSTALL_PREFIX=#{prefix}"
  end
end
