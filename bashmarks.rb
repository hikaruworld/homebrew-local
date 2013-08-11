require 'formula'

class Bashmarks < Formula
  head 'https://github.com/hikaruworld/bashmarks.git', :revision => '6725c8c9a78f1a1e370a864eeb577948911d4d46'

  def install
    prefix.install Dir['*']
  end

end

require 'formula'
