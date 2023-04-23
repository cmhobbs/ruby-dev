# Vagrant environment for Ruby

- Ubuntu 22.04
- Ruby 3.2.2 installed via asdf
- Default gems:  bundler, pry, rspec

## Usage

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

Yes, I know asdf is included as a git repo in a detached head state.  No, it's
not intended to be a submodule.  I needed a VM pretty quick and I'll figure out
a cleaner way to handle that in the future.

## Laundry List

- Come up with a better Ruby installation method... perhaps some Ansible voodoo
- Add more useful default gems
- Include htop or glances
- Include `gem_home` or something similar
- Set up port forwarding
- Clean up included asdf repo