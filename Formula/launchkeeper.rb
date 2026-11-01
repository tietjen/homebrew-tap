class Launchkeeper < Formula
  desc "Autoruns for macOS: inventory, control and cleanup of what starts automatically"
  homepage "https://github.com/tietjen/launchkeeper"
  url "https://github.com/tietjen/launchkeeper/releases/download/v0.13.0/launchkeeper-v0.13.0-macos-universal.tar.gz"
  sha256 "62765e1950e83cb7adca6617e63c6a33443848a881b0152754326f275079ce9c"
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
