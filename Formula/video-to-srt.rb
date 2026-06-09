class VideoToSrt < Formula
  desc "Generate SRT subtitles from YouTube or local video sources"
  homepage "https://github.com/ygrenzinger/video-to-srt"
  version "1.0.0"
  license :cannot_represent

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.0.0/video-to-srt_1.0.0_darwin_arm64.tar.gz"
      sha256 "d805b154c9b693b485b7ce16d3c670f50c6cebbcf9672e6e58c5742710de1a80"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.0.0/video-to-srt_1.0.0_darwin_amd64.tar.gz"
      sha256 "ba7c863b67764da2ed2810000837e778af2a2bfb3a820977e664aec304d3b772"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.0.0/video-to-srt_1.0.0_linux_arm64.tar.gz"
      sha256 "77f90153c1e1c6722f01d86c32fbd5e7e1479b20f938237972e98470444724b8"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.0.0/video-to-srt_1.0.0_linux_amd64.tar.gz"
      sha256 "64955a7142449e2a5792a36772f0f91c01c19d0fedb8978bd33b9bc776b7b05b"
    end
  end

  def install
    bin.install "video-to-srt"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/video-to-srt --version").strip
  end
end
