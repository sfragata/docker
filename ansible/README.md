# Ansible

A lightweight Docker container with Ansible pre-installed for running Ansible playbooks and managing infrastructure.

## Usage

### Run an Ansible Playbook

```bash
docker run -it --rm -v ~/.ssh:/root/.ssh -v /path/to/playbooks:/ansible sfragata/ansible ansible-playbook playbook.yml
```

### Run Ansible Commands

```bash
docker run -it --rm -v ~/.ssh:/root/.ssh -v /path/to/inventory:/ansible sfragata/ansible ansible-inventory --list -i inventory.ini
```

### Interactive Shell

```bash
docker run -it --rm -v ~/.ssh:/root/.ssh -v /path/to/playbooks:/ansible sfragata/ansible bash
```

## Requirements

- SSH keys mounted for authentication (recommended): `-v ~/.ssh:/root/.ssh`
- Playbooks or inventory files mounted: `-v /path/to/playbooks:/ansible`

## Example

```bash
docker run -it --rm \
  -v ~/.ssh:/root/.ssh \
  -v ./playbooks:/ansible \
  sfragata/ansible \
  ansible-playbook -i inventory.ini site.yml
```

## Mounted Workdir

The container sets `/ansible` as the working directory, which is ideal for mounting your playbooks and configuration files.
