# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.5.59"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.59/mesheryctl_0.5.59_Darwin_x86_64.zip"
      sha256 "d831e50b134370672775f5a5fdd3c13c03cd21648704612e591c678ac362e2f6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/meshery/meshery/releases/download/v0.5.59/mesheryctl_0.5.59_Darwin_arm64.zip"
      sha256 "b8fe505252a989e89773e8eae3d420d37f2a9da5791212273e1ddacc9f8703e1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.59/mesheryctl_0.5.59_Linux_x86_64.zip"
      sha256 "e841d2da8badc750493a286748c194bc2d5699f7c9809505be530ef7defd5f83"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.59/mesheryctl_0.5.59_Linux_armv6.zip"
      sha256 "e68bf51b6a7f4e8a0fdbc2c6f93f25f889170e36659e2e3a9a7ced219f2ba4d5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.59/mesheryctl_0.5.59_Linux_arm64.zip"
      sha256 "0a1925b82f815a8f7079fa82d205e8033d430f919bef762592fb38833d3675e3"
    end
  end

  def install
    bin.install "mesheryctl"
  end
end
