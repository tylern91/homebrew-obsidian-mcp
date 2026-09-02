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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.0/obsidian-mcp-v0.3.0-darwin-arm64.tar.gz"
      sha256 "5b6d49b5c986b3d651505b9bb9cfccc28e8b6959ccf15e667af4fbe131303f88"
      version "0.3.0"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.0/obsidian-mcp-v0.3.0-darwin-amd64.tar.gz"
      sha256 "2fbcb80c9e9021e9903a0488d622a8c05ee9522b0b4e2b9d0f9695d472e78766"
      version "0.3.0"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.0/obsidian-mcp-v0.3.0-linux-amd64.tar.gz"
      sha256 "4dc693cc7c57b30819153f81ec6db812a1d219ffd700d51fd9ba11b866f3cd40"
      version "0.3.0"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.0/obsidian-mcp-v0.3.0-linux-arm64.tar.gz"
      sha256 "e2469dfd91e4a8a3221bce83e994ac1c735ae667e655e7b31caba6b564811daf"
      version "0.3.0"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
