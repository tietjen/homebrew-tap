class Launchkeeper < Formula
  desc "Autoruns for macOS: inventory, control and cleanup of what starts automatically"
  homepage "https://github.com/tietjen/launchkeeper"
  url "https://github.com/tietjen/launchkeeper/releases/download/v0.12.1/launchkeeper-v0.12.1-macos-universal.tar.gz"
  sha256 "4f1d1678bada8cc19f6c86843289977d4e2a6854ed5e534b9e7c9522f0615c7d"
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
