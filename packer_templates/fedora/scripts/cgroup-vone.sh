#!/bin/bash -eux
dnf -y install grubby && grubby --update-kernel=ALL --args="systemd.unified_cgroup_hierarchy=0" --make-default