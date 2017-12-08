class Vmaf < Formula
  desc "Perceptual video quality assessment based on multi-method fusion."
  homepage "https://github.com/Netflix/vmaf#usage-through-libvmaf"
  url "https://github.com/rcunning/homebrew-archives/raw/master/vmaf-1.0.1.tar.xz"
  sha256 "cf66dbd0d4947f433ba97b45e138f0ae7a2fc1a163ca2382c213c33b2a64960e"
  version "1.0.1"
  head "https://github.com/Netflix/vmaf.git"

  depends_on "pkg-config" => :build
  depends_on "gcc" => :build

  def install
    system "make"
    system "make", "install", "INSTALL_PREFIX=#{prefix}"
  end
end
