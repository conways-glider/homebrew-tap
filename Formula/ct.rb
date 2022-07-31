class Ct < Formula
  desc "Config Tranfromer (ct) is a tool to convert between YAML, TOML, JSON, and HCL"
  homepage "https://github.com/conways-glider/ct"
  url "https://github.com/conways-glider/ct/archive/1.1.0.tar.gz"
  sha256 "9057f120e2676eefb350fcea506aa3c7aa34e79b0e5fd1634c64c48a3d18ccf9"
  license any_of: ["MIT", "Apache-2.0"]

  bottle do
    root_url "https://github.com/conways-glider/homebrew-tap/releases/download/ct-1.1.0"
    rebuild 1
    sha256 cellar: :any_skip_relocation, big_sur:      "27d5e8d00d01c4b56da233ec511995a8963776752e4c936cdd938777e7b700f8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8bf22092c1b7ed610a056b4ef9330a0d2d269812d3f1f4a55ee1dec7a3b301ed"
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
