#!/bin/bash
# Script para criar máquina virtual com KVM e libvirt

NOME=teste #TODO: receber nome da VM via prompt (var $1)
VCPUS=1
RAM=1024
MAC=52:54:00:00:00:01 ##TODO: receber MAC via prompt (var $2)
DEBIAN_VERSION=buster
LOCATION='http://deb.debian.org/debian/dists/"$DEBIAN_VERSION"/main/installer-amd64'
#---Não alterar a partir daqui
virt-install --name=$NOME --vcpus=$VCPUS --ram $RAM \
  --disk path=$HOME/kvms/$NOME,bus=virtio,cache=none \
  --network bridge=br-kvm,model=virtio,mac=$MAC --accelerate \
  --graphics none --extra-args="console=ttyS0,115200" \
  --location=$LOCATION
