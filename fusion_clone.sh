#!/bin/bash
# /Applications/VMware Fusion.app/Contents/Public/vmrun
# vmrun clone /path/to/vm.vmx /path/to/dst.vmx linked

# name for the clone
vmname=""
# base vm dir
vmdir='$HOME/Documents/Virtual Machines.localized'
# source vm
src="$vmdir/macOS 10.14.vmwarevm"
# cloned vm dst
dst="$vmdir/$vmname.vmwarevm/$vmname.vmx"

# clone the vm
vmrun -T fusion clone $src  linked -snapshot=$vmname -cloneName=$vmname

# start the vm
vmrun -T fusion start $dst gui
# set the vmname variable
vmrun writeVariable $dst guestVar vmname "$vmname"