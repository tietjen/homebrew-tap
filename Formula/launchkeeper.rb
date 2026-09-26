class Launchkeeper < Formula
  desc "Autoruns for macOS: inventory, control and cleanup of what starts automatically"
  homepage "https://github.com/tietjen/launchkeeper"
  url "https://github.com/tietjen/launchkeeper/releases/download/v0.9.2/launchkeeper-v0.9.2-macos-universal.tar.gz"
  sha256 "32d56ff8bb556b5d99cf863dfa57018322e6787488f7062f08878ed51b07b5b5"
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
