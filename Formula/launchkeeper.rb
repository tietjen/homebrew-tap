class Launchkeeper < Formula
  desc "Autoruns for macOS: inventory, control and cleanup of what starts automatically"
  homepage "https://github.com/tietjen/launchkeeper"
  url "https://github.com/tietjen/launchkeeper/releases/download/v0.5.0/launchkeeper-v0.5.0-macos-universal.tar.gz"
  sha256 "fe5651bba4cf53d6505bce4a1979b349801e580a715b2683bd12fb9912f5d0de"
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
