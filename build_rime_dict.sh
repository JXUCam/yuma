#!/bin/bash
# to build RIME-ready dictionary file

VersionString=$(date +%Y%m%d)
cat yuma3.dict.yaml.header | sed "s/YYYYmmdd/$VersionString/" > yuma3-chars.dict.yaml
head -8105 code.txt >> yuma3-chars.dict.yaml
echo yuma3-chars.dict.yaml created.
