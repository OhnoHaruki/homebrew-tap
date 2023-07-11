VERSION="0.1.11"

class Shorturlz < Formula
    desc "URL shortner via bit.ly, etc."
    homepage "https://ohnoharuki.github.io/shortURLz"
    url "https://github.com/OhnoHaruki/shortURLz/releases/download/v#{VERSION}/shortURLz-#{VERSION}_darwin-amd64.tar.gz"
    version VERSION
    sha256 "d6ffee54f4ca4546505773c22c8224c21b0f8fc83c9b6bc6b1d08d3ff9231800"
    license "MIT"
#    option "without-completions", "Disable bash completions"
#    depends_on "without-completion@2" => :optional
    def install
        bin.install "shortURLz"
#        bash_completion.install "completions/bash/shortURLz" if build.with? "completions"
    end
    test do
        system bin/"shortURLz","--version"
    end
end