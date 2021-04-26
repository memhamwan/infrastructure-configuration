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
ansible-playbook --vault-password-file .vault-password -i memphis.yml configure-routeros.yml --tags update
```

### Base Linux Setup

1. Add your new host to the inventory file `memphis.yml`
2. Make sure that `python` and `python-simplejson` are installed on the target host
3. Run the following locally to get the basic install up-and-running (this assumes the user you have is with name "hamwan"):

   ```bash
   ansible-playbook -i memphis.yml base-linux-setup.yml --vault-password-file .vault-password  --limit dns.leb.memhamwan.net
   ```

### Media Proxy

```bash
ansible-playbook -i memphis.yml media-proxy.yml
```

### Base mikrotik

```bash
ansible-playbook --vault-password-file .vault-password -i memphis.yml -u hamwan configure-routeros.yml -k -K
ansible-playbook --vault-password-file .vault-password -i memphis.yml base-linux-setup.yml -u pi -k --limit adsb.sco.memhamwan.net
```

Note that you might need to do ANSIBLE_PERSISTENT_COMMAND_TIMEOUT=60 depending on the network throughput.

A more complex example:

```bash
ansible-playbook --vault-password-file .vault-password -i memphis.yml upgrade-routeros.yml --tags update --limit omn1.crw.memhamwan.net
```

### Scrape configs

ansible-playbook --vault-password-file .vault-password -i memphis.yml dump-routeros.yml --limit crw