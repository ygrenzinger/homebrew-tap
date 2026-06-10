class VideoToSrt < Formula
  desc "Generate SRT subtitles from YouTube or local video sources"
  homepage "https://github.com/ygrenzinger/video-to-srt"
  version "1.2.0"
  license :cannot_represent

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.0/video-to-srt_1.2.0_darwin_arm64.tar.gz"
      sha256 "505a6662a5030419d7b8c55b0a0e6cd100367756442d07a7e60ff6014d33fd33"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.0/video-to-srt_1.2.0_darwin_amd64.tar.gz"
      sha256 "f87b036a746f4b6a6c3280a9f8a5c9ea82ba8c98a86109f2266085f7bffb8df3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.0/video-to-srt_1.2.0_linux_arm64.tar.gz"
      sha256 "e7fd12f21939d482b906093f7e2cf54298921febae4fd2ee56240d2acd8d42bc"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.0/video-to-srt_1.2.0_linux_amd64.tar.gz"
      sha256 "a8ffeb43d3ba96f0f1f30a59d8c0d4228e72b2791d2d1cc3ad50c2c154f33790"
    end
  end

  def install
    bin.install "video-to-srt"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/video-to-srt --version").strip
  end
end
