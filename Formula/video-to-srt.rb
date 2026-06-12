class VideoToSrt < Formula
  desc "Generate SRT subtitles from YouTube or local video sources"
  homepage "https://github.com/ygrenzinger/video-to-srt"
  version "2.0.0"
  license :cannot_represent

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v2.0.0/video-to-srt_2.0.0_darwin_arm64.tar.gz"
      sha256 "e3f0aab7fa81a025624438a9b2a5ede4c823dda77e16d3dff017d0b31dee9fed"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v2.0.0/video-to-srt_2.0.0_darwin_amd64.tar.gz"
      sha256 "ce3978dc141b21cd9b4f908c2e69b0d852006dfae38830881efd20d173c8061d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v2.0.0/video-to-srt_2.0.0_linux_arm64.tar.gz"
      sha256 "b9ee38774202f02a95503c72c3081b6d308cd47952a49501e0a3a1d5d0f574c2"
    else
      url "https://github.com/ygrenzinger/video-to-srt/releases/download/v2.0.0/video-to-srt_2.0.0_linux_amd64.tar.gz"
      sha256 "bbf7c8cbd67ff816c822fe9193447021e59e5505f132bb95c2afa9d2b114e2ad"
    end
  end

  def install
    bin.install "video-to-srt"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/video-to-srt --version").strip
  end
end
