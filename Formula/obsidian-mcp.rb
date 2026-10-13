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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.1/obsidian-mcp-v0.3.1-darwin-arm64.tar.gz"
      sha256 "f919b09af830d9588c7c1bcf99278c276f85a79f0a8b37bbd7a81f96b9732d7d"
      version "0.3.1"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.1/obsidian-mcp-v0.3.1-darwin-amd64.tar.gz"
      sha256 "890cc19eda966e8d3c771a562caf958d3a4396b37531903ba5d7ff2534020191"
      version "0.3.1"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.1/obsidian-mcp-v0.3.1-linux-amd64.tar.gz"
      sha256 "20eadd55df6ed92685d5060bee08ad7b743a510be1b96df268079e1ad80fa5f6"
      version "0.3.1"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.1/obsidian-mcp-v0.3.1-linux-arm64.tar.gz"
      sha256 "9ab23140a126f587b384c411542ca4acec8a68fa0388ed4ede8a24880ac65c31"
      version "0.3.1"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
