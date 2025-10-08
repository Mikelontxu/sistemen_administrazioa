#!/bin/bash

mkdir -p cosas_xd
cd cosas_xd

for i in {1..99}; do
    man ls | col -b | sed -n "$((i + 1))p" > "${i}.txt"
done
