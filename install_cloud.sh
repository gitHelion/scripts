export OVERCLOUD_NTP_SERVER=192.168.50.4
export UNDERCLOUD_NTP_SERVER=192.168.50.4

bash -x /root/tripleo/tripleo-incubator/scripts/hp_ced_installer.sh |& tee install_cloud.log

