class Ct < Formula
  desc "Config Tranfromer (ct) is a tool to convert between YAML, TOML, JSON, and HCL"
  homepage "https://github.com/conways-glider/ct"
  url "https://github.com/conways-glider/ct/archive/1.1.0.tar.gz"
  sha256 "0dc1432162f680987d9999e2b4cfb92e59a50273cfc15aa263545f345dd42d25"
  license any_of: ["MIT", "Apache-2.0"]

  bottle do
    root_url "https://github.com/conways-glider/homebrew-tap/releases/download/ct-1.1.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "455195c16d5b6bac9e0486ed73f0eb4afa28c05ae66f42ea4e2f2a34b4919b06"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "38b4be4200713029b2c6d5b4685f72e0203d14afd0f9593a0eb15568f49534a6"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.Version=#{version}", *std_go_args
  end

  test do
    version_output = shell_output("#{bin}/ct --version 2>&1")
    assert_match "ct version 1.1.0\n", version_output
  end
end
