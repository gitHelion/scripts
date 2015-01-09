export OVERCLOUD_NTP_SERVER=192.168.50.4
export UNDERCLOUD_NTP_SERVER=192.168.50.4
HP_VM_MODE=y bash -x /root/tripleo/tripleo-incubator/scripts/hp_ced_host_manager.sh --create-seed |& tee seedinstall.log
scp /usr/local/bin/install_cloud.sh root@192.0.2.1:/root
