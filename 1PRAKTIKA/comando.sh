#!/bin/bash

read -p "Sartu komando bat: " hitza

comando=$(command -v "$hitza")

if [ -n "$comando" ]; then
    echo "'$hitza' es un comando del sistema."
else
    echo "'$hitza' NO es un comando del sistema."
fi
