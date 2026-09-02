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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.2.0/obsidian-mcp-v0.2.0-darwin-arm64.tar.gz"
      sha256 "1a9fa8aef4e8ff47fe4d29d57e6d74f88c3bef9dad1b50c3b152fca8e59ddf10"
      version "0.2.0"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.2.0/obsidian-mcp-v0.2.0-darwin-amd64.tar.gz"
      sha256 "b0e6eb3a6888b630c6477bcdd9b2e2ac024669a888a908c3dc746445871c3acd"
      version "0.2.0"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.2.0/obsidian-mcp-v0.2.0-linux-amd64.tar.gz"
      sha256 "36c5b0716c238a78007674c3ecbaebf9d45e07a394d020e00f1bb061d4885682"
      version "0.2.0"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.2.0/obsidian-mcp-v0.2.0-linux-arm64.tar.gz"
      sha256 "be0be49b2af518626f3f0391a16cbd8bced6e5b3c1dbb75456381b1a93209158"
      version "0.2.0"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
