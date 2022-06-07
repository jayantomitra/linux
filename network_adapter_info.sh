#!/bin/bash

value= $( ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [$value -et 1]
then 
  echo "WE HAVE 1 ACTIVE INTERFACE"
  
elif [$value -gt 1]
then 
  echo "WE HAVE MULTIPLE ACTIVE INTERFACES"
  
else 
  echo "NO ACTIVE INTERFACES FOUND"
  
  
  
