#!/bin/bash
#PBS -N 1000portgen
#PBS -q long
#PBS -l nodes=1:ppn=8


cd /tmp


mkdir 1
mkdir 2
mkdir 3
mkdir 4
mkdir 5
mkdir 6
mkdir 7
mkdir 8

cd 1
/home/babaeva/TSP5/quak.sh &
cd ../2
/home/babaeva/TSP5/quak.sh &
cd ../3
/home/babaeva/TSP5/quak.sh &
cd ../4
/home/babaeva/TSP5/quak.sh &
cd ../5
/home/babaeva/TSP5/quak.sh &
cd ../6
/home/babaeva/TSP5/quak.sh &
cd ../7
/home/babaeva/TSP5/quak.sh &
cd ../8
/home/babaeva/TSP5/quak.sh &

wait;
