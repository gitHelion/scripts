for p in `virsh list | grep running | awk '{ print $2}'`  ; do virsh destroy $p; virsh undefine $p; done
for p in `virsh vol-list default | grep images | awk '{print $2}'` ; do virsh vol-delete $p; done
virsh net-destroy brbm
virsh net-undefine brbm
rm /var/lib/libvirt/images/*
ovs-vsctl del-br brbm
ovs-vsctl add-br brbm
