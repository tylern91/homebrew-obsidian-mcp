# Homebrew formula template for obsidian-mcp.
#
# This file lives in the obsidian-mcp-server source repo at
# packaging/homebrew/obsidian-mcp.rb.template. scripts/update-homebrew-formula.sh
# renders it (substituting the OBSIDIAN_MCP_* placeholders below) into
# packaging/homebrew/obsidian-mcp.rb, then pushes that rendered copy to the
# Homebrew tap (github.com/tylern91/homebrew-obsidian-mcp) on each release.
# Never edit packaging/homebrew/obsidian-mcp.rb directly — it's a generated
# file, not the template.
#
# Install:
#   brew tap tylern91/obsidian-mcp
#   brew install obsidian-mcp
class ObsidianMcp < Formula
  desc "Filesystem-based MCP server for Obsidian vaults"
  homepage "https://github.com/tylern91/obsidian-mcp-server"
  license "Apache-2.0"

  on_macos do
    on_arm do
      # darwin-arm64 (macOS, Apple Silicon)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.2/obsidian-mcp-v0.3.2-darwin-arm64.tar.gz"
      sha256 "e20db65e05e551f86b3c92b24b952f92a0238bd5f719a9e2ebd3ccd4dbca5c95"
      version "0.3.2"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.2/obsidian-mcp-v0.3.2-darwin-amd64.tar.gz"
      sha256 "d5781bd7309ad4302cd38e32ec514f6ed51a638e3a747bc8ade44170e61507db"
      version "0.3.2"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.2/obsidian-mcp-v0.3.2-linux-amd64.tar.gz"
      sha256 "1c55b2f713d67aae6a19482c85a02aa0e3e6d02618bcf96fdee566f3e1da5e30"
      version "0.3.2"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.2/obsidian-mcp-v0.3.2-linux-arm64.tar.gz"
      sha256 "392d30484a9bf36423d2f57f339e7c76a146d22358ea26c428f1fae286e084a4"
      version "0.3.2"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
