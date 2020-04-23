# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.3.14"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/layer5io/meshery/releases/download/v0.3.14/mesheryctl_0.3.14_Darwin_x86_64.zip"
    sha256 "0b96eabbeeef2d127809fc76a26942a94a38492f395a6ae51a208da9eddc204c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/layer5io/meshery/releases/download/v0.3.14/mesheryctl_0.3.14_Linux_x86_64.zip"
      sha256 "4d00ef7e419ebabdac8e86b88340f7ff3b43caf053824196adbd1f3d8e695181"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/layer5io/meshery/releases/download/v0.3.14/mesheryctl_0.3.14_Linux_arm64.zip"
        sha256 "8286c51d8a9bf16bf9ed088160ec5b76c4b2c7a0f19023b0394a82571086f5bc"
      else
        url "https://github.com/layer5io/meshery/releases/download/v0.3.14/mesheryctl_0.3.14_Linux_armv6.zip"
        sha256 "74adcd942d30954d1ed23776b9d0d296166f92f646d3529caa9c2d75534e4c75"
      end
    end
  end

  def install
    bin.install "mesheryctl"
  end
end
