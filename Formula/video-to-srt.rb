class VideoToSrt < Formula
  desc "Generate SRT subtitles from YouTube or local video sources"
  homepage "https://github.com/ygrenzinger/video-to-srt"
  version "1.2.1"
  license :cannot_represent

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.1/video-to-srt_1.2.1_darwin_arm64.tar.gz"
      sha256 "c47e3af7e7cac758e092eee3ed32b43e541d29015b98585e094e74c5ecabb5f0"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.1/video-to-srt_1.2.1_darwin_amd64.tar.gz"
      sha256 "9a88d4c952b71a4ab8eb5fd0e1a7e3665e886588ce557745739192a4c9cef0f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.1/video-to-srt_1.2.1_linux_arm64.tar.gz"
      sha256 "c7432f9f0bba940afe426241979ab17119eaa80666533b6e76ba7b704018f278"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v1.2.1/video-to-srt_1.2.1_linux_amd64.tar.gz"
      sha256 "cb3268417f83708c69415b7a4b1a8bc7d46be0a585e533611e180ddeb9908954"
    end
  end

  def install
    bin.install "video-to-srt"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/video-to-srt --version").strip
  end
end
