# yt-dlp

A Docker container with [yt-dlp](https://github.com/yt-dlp/yt-dlp), a feature-rich command-line audio/video downloader.

## Usage

### Download a Video

```bash
docker run -it --rm -v ${PWD}:/home/ytdlp sfragata/yt-dlp https://www.youtube.com/watch?v=dQw4w9WgXcQ
```

### Download Audio Only

```bash
docker run -it --rm -v ${PWD}:/home/ytdlp sfragata/yt-dlp -f 'ba' https://www.youtube.com/watch?v=dQw4w9WgXcQ
```

### Download with Subtitles

```bash
docker run -it --rm -v ${PWD}:/home/ytdlp sfragata/yt-dlp --write-subs --sub-lang en https://www.youtube.com/watch?v=dQw4w9WgXcQ
```

### Download Playlist

```bash
docker run -it --rm -v ${PWD}:/home/ytdlp sfragata/yt-dlp https://www.youtube.com/playlist?list=PLxxxxxx
```

## Supported Sites

yt-dlp supports over 1500 video sites including:
- YouTube
- Vimeo
- Dailymotion
- TikTok
- Twitch
- And many more...

## Common Options

```bash
# List available formats
docker run -it --rm sfragata/yt-dlp -F <URL>

# Specify format
docker run -it --rm -v ${PWD}:/home/ytdlp sfragata/yt-dlp -f <format_id> <URL>

# Output filename template
docker run -it --rm -v ${PWD}:/home/ytdlp sfragata/yt-dlp -o '%(title)s.%(ext)s' <URL>

# Extract audio as MP3
docker run -it --rm -v ${PWD}:/home/ytdlp sfragata/yt-dlp -x --audio-format mp3 <URL>
```

## Documentation

For comprehensive documentation and all available options, visit:
- [yt-dlp GitHub](https://github.com/yt-dlp/yt-dlp)
- [yt-dlp documentation](https://github.com/yt-dlp/yt-dlp#readme)

## Included Tools

- FFmpeg: For audio/video conversion and post-processing
- Python: Runtime for yt-dlp
- curl: For downloading
