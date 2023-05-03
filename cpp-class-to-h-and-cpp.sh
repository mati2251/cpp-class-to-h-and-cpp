#!/bin/bash
make
./declarations.out < $1 > $2.h
./definitions.out < $1 > $2.cpp