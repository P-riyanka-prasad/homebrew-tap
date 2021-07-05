# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mesheryctl < Formula
  desc "The Multi-Service Mesh Management Plane."
  homepage "https://layer5.io/meshery"
  version "0.5.30"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.30/mesheryctl_0.5.30_Darwin_x86_64.zip"
      sha256 "3cad3447f9f607cac1a04a9072e63f14dfd3a3d372aaf2ba51379bfa3211156a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/meshery/meshery/releases/download/v0.5.30/mesheryctl_0.5.30_Linux_x86_64.zip"
      sha256 "9cfe60d878821043f1e8e04b43ece2d4fdc52b1dcadc380b59aa33fcb353b383"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.30/mesheryctl_0.5.30_Linux_armv6.zip"
      sha256 "0dbcf8dffb46fa1d870bafc66090dce7410fc187bec5fbf3b71b40b2ccd59c03"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/meshery/meshery/releases/download/v0.5.30/mesheryctl_0.5.30_Linux_arm64.zip"
      sha256 "ebe5aaca3f4c588cb676286e1c28972024231f406c9d799d9a1506dd5bd7fa42"
    end
  end

  def install
    bin.install "mesheryctl"
  end
end
