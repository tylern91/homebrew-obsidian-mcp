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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.3/obsidian-mcp-v0.3.3-darwin-arm64.tar.gz"
      sha256 "0ca5b083b99f1f5be05f3d51714299410a52bfe4280d1503dcb5e9cf9b09092f"
      version "0.3.3"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.3/obsidian-mcp-v0.3.3-darwin-amd64.tar.gz"
      sha256 "679bb57acf99a702c465c9b1046c2210d8fe6e0bfa3b8cbb6187c14d761f63c3"
      version "0.3.3"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.3/obsidian-mcp-v0.3.3-linux-amd64.tar.gz"
      sha256 "9bcf1d455398ab6cef6bfd09f191bebbdd664cfe5880ae98d5c6fa650b64c9fc"
      version "0.3.3"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.3.3/obsidian-mcp-v0.3.3-linux-arm64.tar.gz"
      sha256 "91b538f41889ed1c30c713b2f2cff0b74489c3d7ae9fd8688a2037077b42efbd"
      version "0.3.3"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
