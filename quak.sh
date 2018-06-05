#!/bin/bash
/home/babaeva/TSP/DIMACS/portcgen 250 `od -An -N4 -i /dev/urandom` > /home/babaeva/ican/portcgen.tsp
/home/babaeva/intel/vtune_amplifier_2018/bin64/amplxe-cl -collect advanced-hotspots /home/babaeva/TSP/concorde/TSP/concorde -s `od -An -N4 -i /dev/urandom` /home/babaeva/ican/portcgen.tsp 2>&1>output.log
/home/babaeva/intel/vtune_amplifier_2018/bin64/amplxe-cl -report summary -r r000ah -format text -report-output result.txt
cat result.txt >> /home/babaeva/ican/result_result.log
/usr/bin/time -o /home/babaeva/ican/1000portcgen_times.txt -a -v /home/babaeva/TSP/concorde/TSP/concorde -s `od -An -N4 -i /dev/urandom` /home/babaeva/ican/portcgen.tsp 2>&1>out.log
cat out.log >> /home/babaeva/ican/1000portcgen_out.log
rm -R /home/babaeva/ican/r000ah/
