#!/bin/bash
# By VP@240818

# To be optimized
qm agent ${1} network-get-interfaces | jq -c '.[]' | grep ens18 | jq -c '."ip-addresses"[]' | grep '"ip-address":"10.' | jq -c '.["ip-address"]' | sed 's/"//g'
