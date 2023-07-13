VERSION="0.1.11"

class Shorturlz < Formula
    desc "URL shortner via bit.ly, etc."
    homepage "https://ohnoharuki.github.io/shortURLz"
    url "https://github.com/OhnoHaruki/shortURLz/releases/download/v#{VERSION}/shortURLz-#{VERSION}_darwin_amd64.tar.gz"
    version VERSION
    sha256 "34122730847a2dbd7683352efcab5981c730d6506fe4d0009e1048c20bb17e56"
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