# AdGuard Home Exporter

A Prometheus exporter for [AdGuard Home](https://adguard.com/en/adguard-home/overview.html) that exports metrics about DNS queries, blocked requests, and server statistics.

## Usage

### Basic Usage

Run the exporter with AdGuard Home connection details:

```bash
docker run -d \
  -e ADGUARD_HOME_TOKEN=your_adgard_token \
  -p 9311:9311 \
  sfragata/adguardhome_exporter
```

### Environment Variables

- `ADGUARD_HOME_TOKEN`: Adgard authentication token (required)

### Prometheus Configuration

Add to your `prometheus.yml`:

```yaml
scrape_configs:
  - job_name: 'adguardhome'
    static_configs:
      - targets: ['localhost:9311']
```

## Metrics

The exporter provides metrics about:
- DNS queries processed
- Requests blocked
- Query types distribution
- Server status and uptime
- Cache statistics

## Source

For more information, see the [adguardhome_exporter](https://github.com/sfragata/adguardhome_exporter) repository.
