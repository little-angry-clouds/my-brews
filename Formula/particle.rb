# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Particle < Formula
  desc "Particle is a project designed to aid in the development and testing of Helm charts and other kubernetes manifests."
  homepage "https://github.com/little-angry-clouds/particle/"
  version "0.0.9"
  license "GPL3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.9/particle_0.0.9_darwin_amd64.tar.gz"
      sha256 "cda9be2f1643021258b97727e277a168ab77979f0c0b0353b392d9666d75804f"

      def install
        bin.install "particle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.9/particle_0.0.9_linux_armv6.tar.gz"
      sha256 "e2da566cf23fee109712c3f8483022f304f7e93de22b7fba84892b90d3d1008a"

      def install
        bin.install "particle"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.9/particle_0.0.9_linux_arm64.tar.gz"
      sha256 "1abaadab3e880833cfb958ee3cbad8b4726a98cf7248548493005da3ac8a59b2"

      def install
        bin.install "particle"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/little-angry-clouds/particle/releases/download/v0.0.9/particle_0.0.9_linux_amd64.tar.gz"
      sha256 "4fc7090187e4a630af1d646979d9f27e45ef7d484449e106ba907fa205da5b7c"

      def install
        bin.install "particle"
      end
    end
  end

  depends_on "go"
  depends_on "helm" => :optional
  depends_on "kind" => :optional
end
