# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Particle < Formula
  desc "Particle is a project designed to aid in the development and testing of Helm charts and other kubernetes manifests."
  homepage "https://github.com/little-angry-clouds/particle/"
  version "0.0.8"
  license "GPL3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.8/particle_0.0.8_darwin_amd64.tar.gz"
      sha256 "3a930819203cde6f917e1b6cf88f38eb75c634210d931e862d077c0d8dcb466a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.8/particle_0.0.8_linux_amd64.tar.gz"
      sha256 "d554bae85ee6d075573dd4541cb3d2a71a66adf11691c294749abd0e2d01d6f7"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.8/particle_0.0.8_linux_armv6.tar.gz"
      sha256 "24f20eee4681041a82b1384920d8a59796f76c5f2fb3d67e93539d561d76633b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.8/particle_0.0.8_linux_arm64.tar.gz"
      sha256 "d36ae1b34cc5385727a3e9f6e36f4be65559e642b7571c6143c044b93b733230"
    end
  end

  depends_on "go"
  depends_on "helm" => :optional
  depends_on "kind" => :optional

  def install
    bin.install "particle"
  end
end
