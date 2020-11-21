#!/bin/bash
[ -w /usr/local/bin ] && SUDO="" || SUDO=sudo
$SUDO apt-get update
$SUDO apt-get install \
    jq \
    curl  -y
cd /tmp
$SUDO curl -sL https://aka.ms/InstallAzureCLIDeb | $SUDO bash
cd /tmp
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl
$SUDO chmod +x ./kubectl
$SUDO mv ./kubectl /usr/local/bin
(cd /tmp;curl -LO https://get.helm.sh/helm-v3.4.0-linux-amd64.tar.gz;tar xvf helm-v3.4.0-linux-amd64.tar.gz;$SUDO mv linux-amd64/helm /usr/local/bin/)
$SUDO chmod +x /usr/local/bin/helm
helm version
$SUDO rm -rf /tmp/*



