#!/bin/bash

printf "\n### adding ruby plugin...\n"
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git

printf "\n### installing ruby 3.2.2...\n"
asdf install ruby 3.2.2

printf "\n### setting default ruby...\n"
asdf global ruby 3.2.2

printf "\n### done.\n"
