#!/bin/bash

function suma()
{
	OP1=$1
	OP2=$2
	echo $(($OP1+$OP2))
}

A=33
B=44
res=$(suma $A $B)
echo "La suma de $A y $B es $res"
