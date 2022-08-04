export K8S_APISERVER="https://192.168.1.100:6443"
export K8S_NODE="k8s-worker0"
export K8S_TOKEN="eyJhbGciOiJSUzI1NiIsImtpZCI6IkpXNEpVMjhfUEl6NDB2Y2hERWhYd2Y1NW45amV1NDNOalJzT0NOWVFxTTgifQ.eyJhdWQiOlsiaHR0cHM6Ly9rdWJlcm5ldGVzLmRlZmF1bHQuc3ZjLmNsdXN0ZXIubG9jYWwiXSwiZXhwIjoxNjU5NjA0MDIwLCJpYXQiOjE2NTk2MDA0MjAsImlzcyI6Imh0dHBzOi8va3ViZXJuZXRlcy5kZWZhdWx0LnN2Yy5jbHVzdGVyLmxvY2FsIiwia3ViZXJuZXRlcy5pbyI6eyJuYW1lc3BhY2UiOiJvdm4ta3ViZXJuZXRlcyIsInNlcnZpY2VhY2NvdW50Ijp7Im5hbWUiOiJvdm4iLCJ1aWQiOiIxZTkyZjcwYy02ODg2LTQ4NDUtODhmNi0zZTAzZmMxZTBiNGUifX0sIm5iZiI6MTY1OTYwMDQyMCwic3ViIjoic3lzdGVtOnNlcnZpY2VhY2NvdW50Om92bi1rdWJlcm5ldGVzOm92biJ9.Cr6nAzNws2ApE3G2Evc0cD_e4GdM2pkr9vzzsIeE0xZO0N89k58lz094LN7a1H98rwI5amxYpzzFqhwvfGsc_ow33gsZiBRiO1dEEw70BSviaJCFQd5FfLLD2edIAEEqfN9BZGw_sPHlO0KE-LcMoTV-n0tMBY_DYz4dS6m72Les8BCGyC3FtCsIeezEBTcWqxpKzkLLx0odPtjdjk2gNCcX8bPVrgORIfUydenUpWJwrnpqkpzwTJjMK9EpMCQvWaQOgA2dQQcIa-sG0nJB5Gw6YVe1wUGMyzIFfEfp17clasdUlgNnHiQRlVNt-eBXkEod4Da7DkVX7QRAWtdTBA" # Token from previous result
export K8S_CACERT="/home/core/work/ovn-kubernetes-virtio/dist/images/ca.crt"
export OVN_NET_CIDR="172.16.0.0/1"
export OVN_SVC_CIDR="10.96.0.0/16"
export DPU_IP="192.168.1.120"
# for external traffic to go through a different gateway than the default,
# add to the below: --gateway-nexthop=<next-hop-ip>
export OVN_GATEWAY_OPTS='--gateway-interface=enp8s0'
export OVNKUBE_NODE_MGMT_PORT_NETDEV=enp9s0 # The representor  of the VF that used for --ovnkube-node-mgmt-port-netdev in deployment on host
export OVN_DISABLE_PKT_MTU_CHECK=true
 
# Assume still in dist/images
# Modify container image name in scripts below in case it
# differs than ovn-daemonset
$ ./run-ovn-dpu.sh
$ ./run-ovnkube-node-dpu.sh
