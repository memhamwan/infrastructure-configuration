# WISP Automation

## Quick Start

- Add your `.vault-password` file
- Install `ansible python3-pip`
- Run `ansible-galaxy collection install community.network`
- Run `pip3 install paramiko`

## Playbooks

### Updating all routers

This will update routeros and then the routerboard firmware for every routeros device. "Changed" status is accurate -- devices that just show "OK" were already up-to-date.

```bash
ansible-playbook --vault-password-file .vault-password -i memphis.yaml upgrade-routeros.yaml --tags update,add-users
```

### Base Linux Setup

1. Add your new host to the inventory file `memphis.yaml`
2. Make sure that `python` and `python-simplejson` are installed on the target host
3. Run the following locally to get the basic install up-and-running (this assumes the user you have is with name "hamwan"):

   ```bash
   ansible-playbook -i memphis.yaml base-linux-setup.yaml --vault-password-file .vault-password  --limit dns.leb.memhamwan.net
   ```

### Media Proxy

```bash
ansible-playbook -i memphis.yaml media-proxy.yaml
```

### Base mikrotik

```bash
ansible-playbook --vault-password-file .vault-password -i memphis.yaml -u hamwan configure-routeros.yaml -k -K
ansible-playbook --vault-password-file .vault-password -i memphis.yaml base-linux-setup.yaml -u pi -k --limit adsb.sco.memhamwan.net
```

Note that you might need to do ANSIBLE_PERSISTENT_COMMAND_TIMEOUT=60 depending on the network throughput.

A more complex example:

```bash
ansible-playbook --vault-password-file .vault-password -i memphis.yaml upgrade-routeros.yaml --tags update --limit omn1.crw.memhamwan.net
```

### Scrape configs

ansible-playbook --vault-password-file .vault-password -i memphis.yaml dump-routeros.yaml --limit crw