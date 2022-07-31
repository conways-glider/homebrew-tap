class Ct < Formula
  desc "Config Tranfromer (ct) is a tool to convert between YAML, TOML, and JSON"
  homepage "https://github.com/conways-glider/ct"
  url "https://github.com/conways-glider/ct/archive/1.0.0.tar.gz"
  sha256 "672733fa257b7910625ec118ad1e8b57c79e841cdafc17527346d9ec89d368c3"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.Version=#{version}", *std_go_args
  end

  test do
    version_output = shell_output("#{bin}/ct --version 2>&1")
    assert_match "ct version 1.0.0\n", version_output
  end
end
