class ZshBat < Formula
    desc "Use 'bat' as a syntax highlighter in Zsh"
    homepage "https://github.com/fdellwing/zsh-bat"
    url "https://github.com/fdellwing/zsh-bat/archive/refs/tags/v0.5.tar.gz"
    sha256 "d85814dc9d1b11a4f72b8f46dbe9f084c588dd3c3f33ee5b3502b1e3babe237b"
    license "MIT"
  
    depends_on "bat"
    depends_on "zsh"
  
    def install
      bin.install "zsh-bat"
      (share/"zsh/site-functions").install "_zsh-bat"
    end
  
    def caveats
      <<~EOS
        To activate zsh-bat, add the following line to your ~/.zshrc:
          source $(brew --prefix)/share/zsh/site-functions/_zsh-bat
      EOS
    end
  
    test do
      system "#{bin}/zsh-bat", "--help"
    end
  end