class Ct < Formula
  desc "Config Tranfromer (ct) is a tool to convert between YAML, TOML, JSON, and HCL"
  homepage "https://github.com/conways-glider/ct"
  url "https://github.com/conways-glider/ct/archive/1.1.0.tar.gz"
  sha256 "9057f120e2676eefb350fcea506aa3c7aa34e79b0e5fd1634c64c48a3d18ccf9"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.Version=#{version}", *std_go_args
  end

  test do
    version_output = shell_output("#{bin}/ct --version 2>&1")
    assert_match "ct version 1.1.0\n", version_output
  end
end
