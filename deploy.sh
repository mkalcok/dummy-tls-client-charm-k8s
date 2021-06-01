#!/bin/bash
rm -rf ./lib
cp -r ../cert-manager/lib .
charmcraft pack
juju deploy ./tls-client.charm --resource httpbin-image=kennethreitz/httpbin
