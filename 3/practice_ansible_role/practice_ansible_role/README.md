# Ansible role: practice

This role deploys a minimal Flask application, configures a systemd service and sets up nginx as a reverse-proxy.

## Usage

1. Create and activate virtualenv:
   ```
   python3 -m venv venv
   source venv/bin/activate
   pip install ansible
   ```

2. Run locally:
   ```
   ansible-playbook site.yml
   ```

3. To cleanup:
   ```
   ansible-playbook cleanup.yml
   ```

## Variables (defaults/main.yml)
- packages
- apt_cache_valid_time
- app_dir
- app_file
- app_port

