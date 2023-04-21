#!/bin/bash

if [ -z "$TARGET" ]; then
	TARGET=10000000
fi

# Hare
hare build -o prime prime.ha > /dev/null
echo "Hare:"
time ./prime "$TARGET" > /dev/null

# C
gcc prime.c -o prime -lm > /dev/null
echo "C:"
time ./prime "$TARGET" > /dev/null

# C (-O3)
gcc prime.c -o prime -lm -O3 > /dev/null
echo "C (-O3):"
time ./prime "$TARGET" > /dev/null

# Go
go build prime.go > /dev/null
echo "Go:"
time ./prime "$TARGET" > /dev/null

# Java
javac prime.java > /dev/null
echo "Java:"
time java prime "$TARGET" > /dev/null
