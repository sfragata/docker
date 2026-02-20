# jq

A lightweight Docker container with [jq](https://stedolan.github.io/jq/), the command-line JSON processor.

## Usage

### Process JSON Files

```bash
docker run -it --rm -v ${PWD}:/tmp sfragata/jq <filter> /tmp/file.json
```

### From stdin

```bash
cat data.json | docker run -it --rm sfragata/jq '.field'
```

### Common Examples

Extract a field:
```bash
docker run -it --rm -v ${PWD}:/tmp sfragata/jq '.name' /tmp/file.json
```

Pretty print JSON:
```bash
docker run -it --rm -v ${PWD}:/tmp sfragata/jq '.' /tmp/file.json
```

Filter array elements:
```bash
docker run -it --rm -v ${PWD}:/tmp sfragata/jq '.[] | select(.status == "active")' /tmp/file.json
```

## Documentation

For full jq documentation and filter syntax, visit [jq Manual](https://stedolan.github.io/jq/manual/).

## Notes

- The container runs as a non-root user (`jq-user`) for security
- Perfect for processing JSON in pipelines and automation scripts
