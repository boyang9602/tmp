#!/bin/bash
for bid in *; do
    if [[ ! -d $bid ]]; then
        continue
    fi
    root=$(pwd)
    if [ -d $bid/failure_tests_invariants ]; then
        cmd="cd $bid/failure_tests_invariants"
        echo $cmd
        eval $cmd
        for version in *; do
            if [ -d $version ]; then
                cmd="cd $version"
                echo $cmd
                eval $cmd
                for file in *; do
                    if [[ $file == *.json ]]; then
                        continue
                    fi
                    /home/bo/projects/apr_resources/scripts/processJSON.py $file > $file.json
                done
                cd $root/$bid/failure_tests_invariants
            fi
        done
        cd $root
    fi
    if [ -d $bid/passing_tests_invariants ]; then
        cmd="cd $bid/passing_tests_invariants"
        echo $cmd
        eval $cmd
        for version in *; do
            if [ -d $version ]; then
                cmd="cd $version"
                echo $cmd
                eval $cmd
                for file in *; do
                    if [[ $file == *.json ]]; then
                        continue
                    fi
                    /home/bo/projects/apr_resources/scripts/processJSON.py $file > $file.json
                done
                cd $root/$bid/passing_tests_invariants
            fi
        done
        cd $root
    fi
done
