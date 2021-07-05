# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Particle < Formula
  desc "Particle is a project designed to aid in the development and testing of Helm charts and other kubernetes manifests."
  homepage "https://github.com/little-angry-clouds/particle/"
  version "0.0.3"
  license "GPL3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.3/particle_0.0.3_darwin_amd64.tar.gz"
      sha256 "c5f78319b2673282adb3f5249b9aa3bd38c2040ef572263fc71aad70be9a3510"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.3/particle_0.0.3_linux_amd64.tar.gz"
      sha256 "6f3d782e21b8403ee8c62ba095149097a8c2ab9599a720d1ae008908eeef103c"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.3/particle_0.0.3_linux_armv6.tar.gz"
      sha256 "3baefd411cedc5dff049f40cee70e17dcdcbd1483bf0af8e19b6b849a2dfab4a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.3/particle_0.0.3_linux_arm64.tar.gz"
      sha256 "e7d7460701f663db50be1d09817575716dbeceb402f00286a3e954a0851d383e"
    end
  end

  depends_on "go"
  depends_on "helm" => :optional
  depends_on "kind" => :optional

  def install
    bin.install "particle"
  end
end
