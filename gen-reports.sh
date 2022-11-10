#!/bin/bash -ux

# OpenStack
for CHANNEL in {train,ussuri,victoria,wallaby,xena,yoga,zed,latest}/{edge,beta,candidate,stable}; do
    charmhub-lp-tool --config-dir ./release-tools/lp-builder-config/ \
        --log DEBUG \
        -p openstack \
        -f html \
        check-builds \
        --channel $CHANNEL \
        --output ./report/$(echo $CHANNEL  | tr / -).html
done
# Ceph
for CHANNEL in {luminous,mimic,nautilus,octopus,pacific,quincy,latest}/{edge,beta,candidate,stable}; do
    charmhub-lp-tool --config-dir ./release-tools/lp-builder-config/ \
        --log DEBUG \
        -p ceph \
        -f html \
        check-builds \
        --channel $CHANNEL \
        --output ./report/$(echo $CHANNEL  | tr / -).html
done
# OVN
for CHANNEL in {20.03,20.12,21.09,22.03,22.09,latest}/{edge,beta,candidate,stable}; do
    charmhub-lp-tool --config-dir ./release-tools/lp-builder-config/ \
        --log DEBUG \
        -p openstack \
        -f html \
        check-builds \
        --channel $CHANNEL \
        --output ./report/$(echo $CHANNEL  | tr / -).html
done
