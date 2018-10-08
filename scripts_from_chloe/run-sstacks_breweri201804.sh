#!/bin/bash

#run sstacks_R

#get stacks build
tar -xzvf stacks-2.0-build.tar.gz
rm stacks-2.0-build.tar.gz

#define variables
PROCESS=$1
RUN_NAME=$2
CPUS=$3

#get output from building catalog
cp /mnt/gluster/adinicola/${RUN_NAME}_${PROCESS}/stacks.tar.gz ./tmp
cd ./tmp
tar -xzvf stacks.tar.gz
rm stacks.tar.gz

#move into stacks directory to run it
cd ../stacks-2.0

#run sstacks
./sstacks -o ../tmp/stacks -p $CPUS -c ../tmp/stacks/ -s ../tmp/stacks/sample1 -s ../tmp/stacks/sample2 -s ../tmp/stacks/sample3 -s ../tmp/stacks/sample4 -s ../tmp/stacks/sample5 -s ../tmp/stacks/sample6 -s ../tmp/stacks/sample7 -s ../tmp/stacks/sample8 -s ../tmp/stacks/sample9 -s ../tmp/stacks/sample10 -s ../tmp/stacks/sample11 -s ../tmp/stacks/sample12 -s ../tmp/stacks/sample13 -s ../tmp/stacks/sample14 -s ../tmp/stacks/sample15 -s ../tmp/stacks/sample16 -s ../tmp/stacks/sample17 -s ../tmp/stacks/sample18 -s ../tmp/stacks/sample19 -s ../tmp/stacks/sample20 -s ../tmp/stacks/sample21 -s ../tmp/stacks/sample22 -s ../tmp/stacks/sample23 -s ../tmp/stacks/sample24 -s ../tmp/stacks/sample25 -s ../tmp/stacks/sample26 -s ../tmp/stacks/sample27 -s ../tmp/stacks/sample28 -s ../tmp/stacks/sample29 -s ../tmp/stacks/sample30 -s ../tmp/stacks/sample31 -s ../tmp/stacks/sample32 -s ../tmp/stacks/sample33 -s ../tmp/stacks/sample34 -s ../tmp/stacks/sample35 -s ../tmp/stacks/sample36 -s ../tmp/stacks/sample37 -s ../tmp/stacks/sample38 -s ../tmp/stacks/sample39 -s ../tmp/stacks/sample40 -s ../tmp/stacks/sample41 -s ../tmp/stacks/sample42 -s ../tmp/stacks/sample43 -s ../tmp/stacks/sample44 -s ../tmp/stacks/sample45 -s ../tmp/stacks/sample46 -s ../tmp/stacks/sample47 -s ../tmp/stacks/sample48


#note: must include a -s for each sample that you want to process aka match to the cstacks catalog

#tar up job output
cd ../tmp
tar -czvf stacks.tar.gz stacks/

cp stacks.tar.gz /mnt/gluster/adinicola/${RUN_NAME}_${PROCESS}/

