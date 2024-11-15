# Manage z/OS Certificates

This playbook demonstrates how to copy data to and from a z/OS system using modules included in the Red Hat Ansible Certified Content for IBM Z core collection.

This project contains playbooks and roles that demonstrates certificate renewal
using RACF. The playbooks in this project are designed to address an end to end
scenario managing z/OS certificates beginning with monitoring certificates using
Health Checker, creating an authority and certificates, deleting certificates
and even renewing them.

These playbook use:

    collection:
        ibm.ibm_zos_core
    modules:
        zos_tso_command
        zos_operator
        zos_job_submit

It is a good practice to review the playbook contents before executing them.
It will help you understand the requirements in terms of space, location, names,
authority, and the artifacts that will be created and cleaned up.

## Playbook Requirements
This playbook requires:

- [IBM® z/OS® core collection](https://galaxy.ansible.com/ibm/ibm_zos_core)
- [Ansible®](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

## Configuration
- Configure the included [inventory.yml](inventories/inventory.yml) with the
  information from the managed z/OS host.
  - Review [inventory documentation](../docs/share/zos_core/configure_inventory.md)
- Configure the included **host_vars** [zos_host.yml](inventories/host_vars/zos_host.yml)
  with the information from your z/OS system.
  - Review [host_vars documentation](../../docs/share/zos_core/configure_host_vars.md)
    and any additional noted variables in the configuration.

## Run the playbook
This project has several playbooks that you can run, choose a `playbook-name`
and substitute it in the command below to execute it.

```bash
ansible-playbook -i inventories/inventory.yml <playbook-name>
```

## Playbooks 
- [**create_USER_cert.yml**](create_USER_cert.yml) - Create a USER certificate.
- [**delete_cert.yml**](delete_cert.yml) - Delete a certificate.
- [**search_and_renew.yml**](search_and_renew.yml) - Search and a renew a matching certificate found in the RACF_CERTIFCATE_EXPIRATION health check report.
- [**list_cert.yml**](list_cert.yml) - Display a certificate details.
- [**search_and_renew.yml**](search_and_renew.yml) - Search and a renew a matching certificate found in the RACF_CERTIFCATE_EXPIRATION health check report.
- [**restart_app.yml**](restart_app.yml) - Restart z/OS Connect server on z/OS.

# Changelog
All changes are maintained chronologically by date found in the
[changelog](changelog.yml).

# Copyright
© Copyright IBM Corporation 2024

# License
Licensed under [Apache License,
Version 2.0](https://opensource.org/licenses/Apache-2.0).

# Support
Please refer to the [support section](../../../README.md#support) for more
details.