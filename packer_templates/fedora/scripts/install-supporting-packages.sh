#!/bin/bash -eux
# Chef with Fedora >= 30 requires libxcrypt-compat to be installed
dnf -y install libxcrypt-compat grubby && grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0" --make-default
