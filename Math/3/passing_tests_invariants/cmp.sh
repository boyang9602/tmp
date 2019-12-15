#!/bin/bash
rm -rf diff*
cmd="java -jar ~/eclipse-workspace/invsdiff/target/invsdiff-0.0.1-jar-with-dependencies.jar --multiple b.inv.output f.inv.output"
echo $cmd
eval $cmd
for patch in Patch*; do
    cmd="java -jar ~/eclipse-workspace/invsdiff/target/invsdiff-0.0.1-jar-with-dependencies.jar --multiple b.inv.output $patch"
    echo $cmd
    eval $cmd
done