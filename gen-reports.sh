#!/bin/bash -ux

LOG_LEVEL=INFO
charmhub-lp-tool \
  --log $LOG_LEVEL \
  --config-dir ./release-tools/lp-builder-config/ \
  -p ovn \
  -p ceph \
  -p openstack \
  -f html \
  check-builds \
  --channel={train,ussuri,victoria,wallaby,xena,yoga,zed,latest,luminous,mimic,nautilus,octopus,pacific,quincy,20.03,20.12,21.09,22.03,22.09}/{edge,beta,candidate,stable} \
  --output ./report/builds/

charmhub-lp-tool \
  --log $LOG_LEVEL \
  --config-dir ./release-tools/lp-builder-config/ \
  -p ovn \
  -p ceph \
  -p openstack \
  -f html \
  charmhub-report \
  --track={train,ussuri,victoria,wallaby,xena,yoga,zed,latest,luminous,mimic,nautilus,octopus,pacific,quincy,20.03,20.12,21.09,22.03,22.09} \
  --output ./report/charmhub/
