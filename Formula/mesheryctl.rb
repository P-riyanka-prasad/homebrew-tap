# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.4.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/layer5io/meshery/releases/download/v0.4.5/mesheryctl_0.4.5_Darwin_x86_64.zip"
    sha256 "357c8ef2bf792be4cd6667e96ff89d276403ed2690e0cabb79090d9b0e429a5c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/layer5io/meshery/releases/download/v0.4.5/mesheryctl_0.4.5_Linux_x86_64.zip"
      sha256 "002ea1a6a137116fd98381d2119f009834886532b91cdf802efc287f15951a8c"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/layer5io/meshery/releases/download/v0.4.5/mesheryctl_0.4.5_Linux_arm64.zip"
        sha256 "c23b979cb16baa844dc0aa1c2755732bfb13e823200a582bc9f236c18bab1987"
      else
        url "https://github.com/layer5io/meshery/releases/download/v0.4.5/mesheryctl_0.4.5_Linux_armv6.zip"
        sha256 "d2486050f2e208ac1cb40481dd130770ae541ad23227f12a1c5b3ac38554d559"
      end
    end
  end

  def install
    bin.install "mesheryctl"
  end
end
