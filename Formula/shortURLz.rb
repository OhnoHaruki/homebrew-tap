VERSION="0.1.11"

class Shorturlz < Formula
    desc "URL shortner via bit.ly, etc."
    homepage "https://ohnoharuki.github.io/shortURLz"
    url "https://github.com/OhnoHaruki/shortURLz/releases/download/v#{VERSION}/shortURLz-#{VERSION}_darwin_amd64.tar.gz"
    version VERSION
    sha256 "a7fceb0efb234e1e780bef00fb551f107ba976e3cfa7e93f2e70e2de655657f3"
    license "MIT"
#    option "without-completions", "Disable bash completions"
#    depends_on "without-completion@2" => :optional
    def install
        bin.install "shortURLz"
        bash_completion.install "completions/bash/shortURLz" if build.with? "completions"
    end
    test do
        system bin/"shortURLz","--version"
    end
end