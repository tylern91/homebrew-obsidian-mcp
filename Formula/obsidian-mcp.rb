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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.1/obsidian-mcp-v0.4.1-darwin-arm64.tar.gz"
      sha256 "75fea06ba2a69a8b564aae6fe11120c8f6172a82aab7e1a71e900a8ec7ccf819"
      version "0.4.1"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.1/obsidian-mcp-v0.4.1-darwin-amd64.tar.gz"
      sha256 "8d612700602e26dd17cd2ec4d1cc7f1f01bfe68e370cca7ce401cece48c9daa0"
      version "0.4.1"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.1/obsidian-mcp-v0.4.1-linux-amd64.tar.gz"
      sha256 "c8d4fdaf9a970f90253d372717b1659574a4e5a383fe29ac7a8d5b836b5d3166"
      version "0.4.1"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.1/obsidian-mcp-v0.4.1-linux-arm64.tar.gz"
      sha256 "d9f784cf526fa149145d61e5ebef77181132c71f065cc65afdc9a96607580116"
      version "0.4.1"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
