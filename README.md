# Vagrant environment for Ruby

- Ubuntu 22.04
- Ruby 3.2.2 installed via asdf
- Default gems:  bundler, pry, rspec

## Usage

- After cloning, run `git clone https://github.com/asdf-vm/asdf.git vm-config/asdf --branch v0.11.3` from the root of the repo
- Run `vagrant up` and wait for the VM to boot (`apt` and other things will run)
- Run `vagrant ssh` to access the VM
  - The first time you connect to the VM, run `install-ruby.sh` to get Ruby all set up.
  - I like to use `byobu` once I've connected to the VM to manage my work.
- Use your favorite text editor or IDE to edit your code in `src/`
- Run that code `/vagrant/src/` by way of your SSH session

## Gotchas

You have to run the `install-ruby.sh` script when you first connect to the
box because I got tired of messing with `config.vm.provisioner`.  I'm sure the
use of `privileged: false` would help in some way but `asdf` was just generally
not visible without an interactive login shell.

## Laundry List

- Come up with a better Ruby installation method... perhaps some Ansible voodoo
- Add more useful default gems
- Include htop or glances
- Include `gem_home` or something similar
- Set up port forwarding
- Find a cleaner way to include asdf