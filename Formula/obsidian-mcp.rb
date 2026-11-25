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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.4/obsidian-mcp-v0.3.4-darwin-arm64.tar.gz"
      sha256 "d3b9ba3fb4a27cb32a68d9f9a5dd1b9a719c29e2eb120f3accbb8d1d5cc26e55"
      version "0.3.4"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.4/obsidian-mcp-v0.3.4-darwin-amd64.tar.gz"
      sha256 "f16ce0842c2a29b68be55492fb68d621c69e628e4a930a97e5a594d6b2bee0d9"
      version "0.3.4"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.4/obsidian-mcp-v0.3.4-linux-amd64.tar.gz"
      sha256 "f75ad20c032cbf90a5ad79b9c87e6684a5b25dabc8bc871ab88f44ad0dd735f4"
      version "0.3.4"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.4/obsidian-mcp-v0.3.4-linux-arm64.tar.gz"
      sha256 "65d9f794bfc142e8224dcd75f974b7c92ae27b6f873ffa281764dbfae3f3622e"
      version "0.3.4"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
