#!/bin/bash

# Ensure the script exits on the first error
set -e

FILENAME=$1
ITERATIONS=$2

count=1
while [ $count -le $ITERATIONS ]; do
    echo "Starting: global iteration $count out of $ITERATIONS"
    ((count++))
 
     # dblp.xml
    echo "0% iteration progres ... starting: duval dblp.xml.[size]"
    /usr/bin/time -v ./duval dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dblp.xml.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dblp.xml.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dblp.xml.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "3% iteration progres ... starting: rDuval dblp.xml.[size]"
    /usr/bin/time -v ./rDuval dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dblp.xml.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dblp.xml.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dblp.xml.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "6% iteration progres ... starting: suffix_array dblp.xml.[size]"
    /usr/bin/time -v ./suffix_array dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dblp.xml.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dblp.xml.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dblp.xml.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "10% iteration progres ... starting: lrm_isa dblp.xml.[size]"
    /usr/bin/time -v ./lrm_isa dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dblp.xml.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dblp.xml.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dblp.xml.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "13% iteration progres ... starting: nsv_isa dblp.xml.[size]"
    /usr/bin/time -v ./nsv_isa dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dblp.xml.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dblp.xml.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dblp.xml.200MB > /dev/null 2>> ../$FILENAME.txt

    # dna
    echo "16% iteration progres ... starting: duval dna.[size]"
    /usr/bin/time -v ./duval dna.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.200MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.250MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.300MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.350MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.400MB > /dev/null 2>> ../$FILENAME.txt

    echo "23% iteration progres ... starting: rDuval dna.[size]"
    /usr/bin/time -v ./rDuval dna.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.200MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.250MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.300MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.350MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.400MB > /dev/null 2>> ../$FILENAME.txt

    echo "30% iteration progres ... starting: suffix_array dna.[size]"
    /usr/bin/time -v ./suffix_array dna.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.200MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.250MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.300MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.350MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.400MB > /dev/null 2>> ../$FILENAME.txt

    echo "36% iteration progres ... starting: lrm_isa dna.[size]"
    /usr/bin/time -v ./lrm_isa dna.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.200MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.250MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.300MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.350MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.400MB > /dev/null 2>> ../$FILENAME.txt

    echo "43% iteration progres ... starting: nsv_isa dna.[size]"
    /usr/bin/time -v ./nsv_isa dna.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.200MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.250MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.300MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.350MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.400MB > /dev/null 2>> ../$FILENAME.txt

    # english
    echo "50% iteration progres ... starting: duval english.[size]"
    /usr/bin/time -v ./duval english.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval english.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval english.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval english.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "53% iteration progres ... starting: rDuval english.[size]"
    /usr/bin/time -v ./rDuval english.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval english.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval english.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval english.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "56% iteration progres ... starting: suffix_array english.[size]"
    /usr/bin/time -v ./suffix_array english.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array english.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array english.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array english.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "60% iteration progres ... starting: lrm_isa english.[size]"
    /usr/bin/time -v ./lrm_isa english.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa english.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa english.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa english.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "63% iteration progres ... starting: nsv_isa english.[size]"
    /usr/bin/time -v ./nsv_isa english.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa english.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa english.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa english.200MB > /dev/null 2>> ../$FILENAME.txt

    # sources
    echo "66% iteration progres ... starting: duval sources.[size]"
    /usr/bin/time -v ./duval sources.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval sources.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval sources.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval sources.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "70% iteration progres ... starting: rDuval sources.[size]"
    /usr/bin/time -v ./rDuval sources.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval sources.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval sources.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval sources.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "73% iteration progres ... starting: suffix_array sources.[size]"
    /usr/bin/time -v ./suffix_array sources.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array sources.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array sources.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array sources.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "76% iteration progres ... starting: lrm_isa sources.[size]"
    /usr/bin/time -v ./lrm_isa sources.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa sources.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa sources.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa sources.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "80% iteration progres ... starting: nsv_isa sources.[size]"
    /usr/bin/time -v ./nsv_isa sources.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa sources.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa sources.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa sources.200MB > /dev/null 2>> ../$FILENAME.txt

    # proteins
    echo "83% iteration progres ... starting: duval proteins.[size]"
    /usr/bin/time -v ./duval proteins.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval proteins.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval proteins.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval proteins.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "86% iteration progres ... starting: rDuval proteins.[size]"
    /usr/bin/time -v ./rDuval proteins.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval proteins.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval proteins.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval proteins.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "90% iteration progres ... starting: suffix_array proteins.[size]"
    /usr/bin/time -v ./suffix_array proteins.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array proteins.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array proteins.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array proteins.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "93% iteration progres ... starting: lrm_isa proteins.[size]"
    /usr/bin/time -v ./lrm_isa proteins.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa proteins.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa proteins.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa proteins.200MB > /dev/null 2>> ../$FILENAME.txt

    echo "96% iteration progres ... starting: nsv_isa proteins.[size]"
    /usr/bin/time -v ./nsv_isa proteins.50MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa proteins.100MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa proteins.150MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa proteins.200MB > /dev/null 2>> ../$FILENAME.txt

done