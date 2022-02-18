#!/bin/bash

echo "---- Cluster Label Init ----"

declare -a array=($CLUSTER_LIST)
for clusterName in "${array[@]}"
do

echo "---- $clusterName label init ----"

oc label ManagedCluster $clusterName $key=$value --overwrite=true

echo "---- $clusterName label complete ----"

done

echo "---- Labelling Complete!! ----"
