#!/bin/bash -ux

LOG_LEVEL=INFO
charmhub-lp-tool \
  --log $LOG_LEVEL \
  --config-dir ./charmed-openstack-info/charmed_openstack_info/data/lp-builder-config/ \
  -p ovn \
  -p ceph \
  -p openstack \
  -f html \
  check-builds \
  --output ./report/builds/

charmhub-lp-tool \
  --log $LOG_LEVEL \
  --config-dir ./charmed-openstack-info/charmed_openstack_info/data/lp-builder-config/ \
  -p ovn \
  -p ceph \
  -p openstack \
  -f html \
  charmhub-report \
  --output ./report/charmhub/
