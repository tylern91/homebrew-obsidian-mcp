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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.1.0/obsidian-mcp-v0.1.0-darwin-arm64.tar.gz"
      sha256 "2c46420cd08c26433add660f1e0d6e5c82c50cf9d8acb833f394214f9340ce60"
      version "0.1.0"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.1.0/obsidian-mcp-v0.1.0-darwin-amd64.tar.gz"
      sha256 "5d7658a5d8268da22418b967fc2ab5a908e61437ae9adf817619f73dc1b20727"
      version "0.1.0"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.1.0/obsidian-mcp-v0.1.0-linux-amd64.tar.gz"
      sha256 "e9eab87a80922d7a2981736b4a2afe13ec28c949a7f4d29f4219798c0f6ebb7e"
      version "0.1.0"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.1.0/obsidian-mcp-v0.1.0-linux-arm64.tar.gz"
      sha256 "0e1fc279ba0847c51b3c2838344b7e4e1ec747091d321b8c51538c9d8c5e9b6e"
      version "0.1.0"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
