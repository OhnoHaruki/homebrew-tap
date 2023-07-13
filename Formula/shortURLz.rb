VERSION="0.1.11"

class Shorturlz < Formula
    desc "URL shortner via bit.ly, etc."
    homepage "https://ohnoharuki.github.io/shortURLz"
    url "https://github.com/OhnoHaruki/shortURLz/releases/tag/v#{VERSION}/shortURLz-#{VERSION}_darwin-amd64.tar.gz"
    version VERSION
    sha256 "0237f96f7347554123a977d7c0fd032797f221cc1b9cb566770d85927f28f1b5"
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