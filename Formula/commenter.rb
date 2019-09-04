class Commenter < Formula
  desc "Commenter is a tool to create and update comments on GitHub issues and pull requests"
  homepage "https://github.com/chrisfuller/commenter"
  version "0.0.1"
  url "https://github.com/chrisfuller/commenter.git", :tag => "#{version}", :revision => "a4a0f4ddd77264045f128012fbd2b160bfd4a585"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/commenter", "--version"
  end
end
