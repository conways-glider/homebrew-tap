# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ct < Formula
  desc ""
  homepage ""
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/conways-glider/ct/releases/download/1.0.3/ct_darwin_arm64.tar.gz"
      sha256 "18e8e8c20a8286c5e3823072f68e754cb8e57785bb4c8ee8c73ddcd933f48786"

      def install
        bin.install "ct"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/conways-glider/ct/releases/download/1.0.3/ct_darwin_x86_64.tar.gz"
      sha256 "c6dc798baf93b89aac0de89353cf7dbf6d57e99b911fc93303728629d7e594e4"

      def install
        bin.install "ct"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/conways-glider/ct/releases/download/1.0.3/ct_linux_x86_64.tar.gz"
      sha256 "4b0bdd4176f8f8c844ff17269133a2f5c812d67222b597d1c6e77ff0174b9ee2"

      def install
        bin.install "ct"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/conways-glider/ct/releases/download/1.0.3/ct_linux_arm64.tar.gz"
      sha256 "c0de5fcbc18aa472be8bff911fbe7c2f1e794b7c9d8d3a0f1618e1d375a16fb3"

      def install
        bin.install "ct"
      end
    end
  end
end