# git clone https://gist.github.com/3072321
require 'formula'

class Meteor < Formula
  homepage 'http://www.meteor.com'
  url 'http://d3sqy0vbqsdhku.cloudfront.net/meteor-package-Darwin-x86_64-0.4.0.tar.gz'
  sha1 '5233ee07f8fabdce927b6de40b8cbd612c4334c7'

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
