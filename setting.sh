#!/bin/bash

# ANSIBLE_PATH=~/workspace/settings/mac-ansible
ANSIBLE_PATH=$(pwd)

## command line tools
xcode-select --install

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## install ansible
brew install ansible

## clone repo
git clone https://github.com/Shigeki-Nagaya/mac-ansible.git ${ANSIBLE_PATH}

## ansible
cd ${ANSIBLE_PATH}
ansible-playbook -i inventory/localhost localhost.yml
