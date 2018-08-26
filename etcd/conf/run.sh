#!/bin/bash

THIS_NAME=etcd-node1
#THIS_IP=121.42.187.82
#THIS_IP=10.30.187.117
THIS_IP=0.0.0.0
TOKEN=token-01
CLUSTER_STATE=new

./etcd --data-dir=data.etcd --name ${THIS_NAME} \
	--initial-advertise-peer-urls http://${THIS_IP}:2380 --listen-peer-urls http://${THIS_IP}:2380 \
	--advertise-client-urls http://${THIS_IP}:2379 --listen-client-urls http://${THIS_IP}:2379 \
	--initial-cluster-state ${CLUSTER_STATE} --initial-cluster-token ${TOKEN}

