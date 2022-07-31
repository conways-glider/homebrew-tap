class Ct < Formula
  desc "Config Tranfromer (ct) is a tool to convert between YAML, TOML, and JSON"
  homepage "https://github.com/conways-glider/ct"
  url "https://github.com/conways-glider/ct/archive/1.0.0.tar.gz"
  sha256 "672733fa257b7910625ec118ad1e8b57c79e841cdafc17527346d9ec89d368c3"
  license any_of: ["MIT", "Apache-2.0"]

  bottle do
    root_url "https://github.com/conways-glider/homebrew-tap/releases/download/ct-1.0.0"
    sha256 cellar: :any_skip_relocation, big_sur:      "fda5fa3f1babe8e8b52ba5f513e3143208d3baac4813785495702ee968b31d93"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "742a8537a822b75071661adf421b751742c07e0a0c36d37241dc901d98ec853a"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags", "-s -w -X main.Version=#{version}", *std_go_args
  end

  test do
    version_output = shell_output("#{bin}/ct --version 2>&1")
    assert_match "ct version 1.0.0\n", version_output
  end
end
