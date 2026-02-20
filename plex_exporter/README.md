# Plex Exporter

A Prometheus exporter for [Plex Media Server](https://www.plex.tv/) that exports metrics about library statistics, playback activity, and server health.

## Usage

### Basic Usage

Run the exporter with Plex server connection details:

```bash
docker run -d \
  -e PLEX_TOKEN=your_plex_token \
  sfragata/plex_exporter
```

### Environment Variables

- `PLEX_TOKEN`: Plex authentication token (required)

### Getting Your Plex Token

1. Visit https://www.plex.tv/
2. Sign in to your account
3. Go to your account settings
4. Under "Remote Access", click "Refresh" next to your token

### Prometheus Configuration

Add to your `prometheus.yml`:

```yaml
scrape_configs:
  - job_name: 'plex'
    static_configs:
      - targets: ['localhost:2112']
```

## Metrics

The exporter provides metrics about:
- Library statistics (movies, shows, music, etc.)
- User activity and playback streams
- Server performance and resource usage
- Playback performance statistics

## Source

For more information, see the [plex_exporter](https://github.com/sfragata/plex_exporter) repository.
