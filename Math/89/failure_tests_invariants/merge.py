#!/usr/bin/python3
import os
from os import listdir
from os.path import isdir
import json

def merge(pairs):
    sidenotcontain = {}
    allinvs = set()
    nasides = set()
    for pair in pairs:
        for side in pair:
            sides = [list(side)[0] for side in pair]
            sidename = list(side)[0]
            sides.remove(sidename)
            anothersidename = sides[0]
            if not anothersidename in sidenotcontain:
                sidenotcontain[anothersidename] = set()
            if isinstance(side[sidename], dict):
                allinvs.update(side[sidename]["invs"])
                sidenotcontain[anothersidename].update(side[sidename]["invs"])
            else:
                nasides.add(sidename)
    result = []
    for sidename in sidenotcontain:
        if sidename in nasides:
            result.append({sidename: "N/A"})
        else:
            result.append({sidename: {"invs": [inv for inv in allinvs if not inv in sidenotcontain[sidename]]}})
    return result
            

def compare_node(name, layers):
    next_layers = {}
    isLast = False
    for node in layers:
        for sub_node in node[name]:
            if sub_node == {}:
                continue
            sub_node_name = list(sub_node)[0]
            if sub_node_name.endswith(".inv.output"):
                isLast = True
                break
            else:
                if sub_node_name in list(next_layers):
                    next_layers[sub_node_name].append(sub_node)
                else:
                    next_layers[sub_node_name] = [sub_node]
        if isLast:
            break
    if isLast:
        return {name: merge([layer[name] for layer in layers])}
    else:
        result = []
        for sub_node in next_layers:
            result.append(compare_node(sub_node, next_layers[sub_node]))
        return {name: result}

files = {}
allfiles = set()

for file in [name for name in listdir() if name.startswith("diff-b.inv.output")]:
    tobcmped = file.split('-')[-1]
    files[tobcmped] = listdir(file)
    allfiles.update(files[tobcmped])

for file in allfiles:
    tmplist = []
    for folder in list(files):
        if file in files[folder]:
            with open("diff-b.inv.output-" + folder + "/" + file) as jsonfile:
                tmplist.append(json.load(jsonfile))
    newfile = compare_node(file, tmplist)
    if not os.path.exists("diff-merged"):
        os.mkdir("diff-merged")
    with open("diff-merged/" + file, "w") as fp:
        json.dump(newfile, fp, indent=4, sort_keys=True)
