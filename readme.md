# Ansible for AWS

Code for my "Automate all the things AWS with Ansible" workshop — slides: [https://speakerdeck.com/xeraa/automate-all-the-things-aws-with-ansible](https://speakerdeck.com/xeraa/automate-all-the-things-aws-with-ansible)


## Todo

* Add your AWS credentials in *ansible-vagrant/playbook.yml*.


## Known Issues

Vagrant <1.8.2 in combination with Ansible >=2.0 fails with the following error on `vagrant up`:

```
The Ansible software could not be found! Please verify
that Ansible is correctly installed on your guest system.

If you haven't installed Ansible yet, please install Ansible
on your Vagrant basebox, or enable the automated setup with the
`install` option of this provisioner. Please check
https://docs.vagrantup.com/v2/provisioning/ansible_local.html
for more information.
```

Simply run `vagrant provision` afterwards and it will work, thanks to an ugly hack in the Vagrantfile.
