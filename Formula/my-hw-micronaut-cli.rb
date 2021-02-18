class MyHwMicronautCli < Formula
  desc "My hello world Micronaut CLI app"
  homepage ""
  url "https://github.com/garodriguezlp/my-hw-micronaut-cli/releases/download/v0.1.2/my-hw-micronaut-cli-0.1.1.zip"
  sha256 "b2a068abd81d4afe00971ca2a16e797e6c6e59a5cb29bbfba07051e90d95c57e"
  license "MIT"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/my-hw-micronaut-cli"
  end

  test do
    system "#{bin}/my-hw-micronaut-cli", "--version"
  end
end
