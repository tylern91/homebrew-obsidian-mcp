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
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.0/obsidian-mcp-v0.4.0-darwin-arm64.tar.gz"
      sha256 "56e5db4a15e89c88a5cf98f1bb3cb0692b413591a3804886080787d7808553ff"
      version "0.4.0"
    end
    on_intel do
      # darwin-amd64 (macOS, Intel)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.0/obsidian-mcp-v0.4.0-darwin-amd64.tar.gz"
      sha256 "96bfa37df6b8c32e091556c4436a870604594ae786932a41d260642b8b64db43"
      version "0.4.0"
    end
  end

  on_linux do
    on_intel do
      # linux-amd64 (Linux, Intel/AMD 64-bit)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.0/obsidian-mcp-v0.4.0-linux-amd64.tar.gz"
      sha256 "556037a98838dad1dd95240dc8c7bcb5a6ef3ed1f5f30a7d359bacac9dd766e2"
      version "0.4.0"
    end
    on_arm do
      # linux-arm64 (Linux, arm64)
      url "https://github.com/tylern91/obsidian-mcp-server/releases/download/v0.4.0/obsidian-mcp-v0.4.0-linux-arm64.tar.gz"
      sha256 "5ff65ca37335940895bf7010794601dd28a0e295bdfefa6ea10c47f3f6e0044f"
      version "0.4.0"
    end
  end

  def install
    bin.install "obsidian-mcp"
  end

  test do
    system "#{bin}/obsidian-mcp", "--version"
  end
end
