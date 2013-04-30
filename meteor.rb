# git clone https://gist.github.com/3072321
require 'formula'

class Meteor < Formula
  homepage 'http://www.meteor.com'
  url 'https://d3fm2vapipm3k9.cloudfront.net/bootstrap/0.6.2.1/meteor-bootstrap-darwin_x86_64.tar.gz'
  sha1 '8e8f0b33e5e874723aa4f862e7d8a1866d9d456a'
  version '0.6.2.1'

  def install
    libexec.install(Dir['{.*,*}'] - ['.', '..']) # includes dotfiles
    (bin+'meteor').write <<-EOS.undent
      #!/bin/bash
      exec "#{libexec}/bin/meteor" "$@"
    EOS
  end

  def test
    system "#{bin}/meteor", '--version'
  end
end
