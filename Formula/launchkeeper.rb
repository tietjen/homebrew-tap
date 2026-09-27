class Launchkeeper < Formula
  desc "Autoruns for macOS: inventory, control and cleanup of what starts automatically"
  homepage "https://github.com/tietjen/launchkeeper"
  url "https://github.com/tietjen/launchkeeper/releases/download/v0.11.1/launchkeeper-v0.11.1-macos-universal.tar.gz"
  sha256 "5c025c5b3c82466cc4faefbd17482c4782d67fa1223105eb93ecb7a7b5e5878f"
  license "MIT"

  depends_on macos: :sonoma

  # Prebuilt universal binary (arm64 + x86_64), Developer ID signed and
  # notarized by Apple in the project's release workflow; the tarball's
  # SHA-256 pins exactly that artifact.
  def install
    bin.install "launchkeeper"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/launchkeeper --version")
  end
end
