class VideoToSrt < Formula
  desc "Generate SRT subtitles from YouTube or local video sources"
  homepage "https://github.com/ygrenzinger/video-to-srt"
  version "1.1.0"
  license :cannot_represent

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.1.0/video-to-srt_1.1.0_darwin_arm64.tar.gz"
      sha256 "2cffb0008722be80a710bd226608afd872542d4b331a4af5e7f826a0975a55cf"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.1.0/video-to-srt_1.1.0_darwin_amd64.tar.gz"
      sha256 "a9c9c8034e3c0d0d3182668b8ac9ed86137b100ae8db7616f4484a1804e4e90c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.1.0/video-to-srt_1.1.0_linux_arm64.tar.gz"
      sha256 "58021d26314f2fa9fe1585e0c769a1f7dcb504b44beae4dfe685dfc166537dd3"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.1.0/video-to-srt_1.1.0_linux_amd64.tar.gz"
      sha256 "1854b7b6060aef27458c20129e1622ba3e2029d28ba0cb8f029a7fff1e752f44"
    end
  end

  def install
    bin.install "video-to-srt"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/video-to-srt --version").strip
  end
end
