#!/bin/bash -e

# An update will will be needed to be able to install most of the packages, somewhat kludgy
# to put it here, but letting everything in puppet to depend on a update execute would be worse.
sudo apt-get update

MODULE_DIR=/etc/puppet/modules
[ ! -d $MODULE_DIR ] && mkdir -p $MODULE_DIR

[ ! -d $MODULE_DIR/apt ] && puppet module install puppetlabs/apt
[ ! -d $MODULE_DIR/jenkins ] && puppet module install rtyler/jenkins
[ ! -d $MODULE_DIR/ntp ] && puppet module install puppetlabs/ntp 
[ ! -d $MODULE_DIR/timezone ] && puppet module install saz/timezone
[ ! -d $MODULE_DIR/sudo ] && puppet module install saz/sudo


exit 0

