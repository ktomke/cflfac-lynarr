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
    /usr/bin/time -v ./duval dblp.xml.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dblp.xml.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dblp.xml.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dblp.xml.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "4% iteration progres ... starting: rDuval dblp.xml.[size]"
    /usr/bin/time -v ./rDuval dblp.xml.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dblp.xml.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dblp.xml.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dblp.xml.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "8% iteration progres ... starting: suffix_array dblp.xml.[size]"
    /usr/bin/time -v ./suffix_array dblp.xml.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dblp.xml.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dblp.xml.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dblp.xml.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "12% iteration progres ... starting: lrm_isa dblp.xml.[size]"
    /usr/bin/time -v ./lrm_isa dblp.xml.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dblp.xml.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dblp.xml.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dblp.xml.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "16% iteration progres ... starting: nsv_isa dblp.xml.[size]"
    /usr/bin/time -v ./nsv_isa dblp.xml.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dblp.xml.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dblp.xml.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dblp.xml.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dblp.xml.50MB > /dev/null 2>> ../$FILENAME.txt

    # dna
    echo "20% iteration progres ... starting: duval dna.[size]"
    /usr/bin/time -v ./duval dna.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval dna.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "24% iteration progres ... starting: rDuval dna.[size]"
    /usr/bin/time -v ./rDuval dna.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval dna.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "28% iteration progres ... starting: suffix_array dna.[size]"
    /usr/bin/time -v ./suffix_array dna.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array dna.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "32% iteration progres ... starting: lrm_isa dna.[size]"
    /usr/bin/time -v ./lrm_isa dna.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa dna.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "36% iteration progres ... starting: nsv_isa dna.[size]"
    /usr/bin/time -v ./nsv_isa dna.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa dna.50MB > /dev/null 2>> ../$FILENAME.txt

    # english
    echo "40% iteration progres ... starting: duval english.[size]"
    /usr/bin/time -v ./duval english.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval english.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval english.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval english.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval english.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "44% iteration progres ... starting: rDuval english.[size]"
    /usr/bin/time -v ./rDuval english.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval english.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval english.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval english.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval english.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "48% iteration progres ... starting: suffix_array english.[size]"
    /usr/bin/time -v ./suffix_array english.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array english.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array english.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array english.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array english.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "52% iteration progres ... starting: lrm_isa english.[size]"
    /usr/bin/time -v ./lrm_isa english.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa english.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa english.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa english.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa english.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "56% iteration progres ... starting: nsv_isa english.[size]"
    /usr/bin/time -v ./nsv_isa english.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa english.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa english.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa english.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa english.50MB > /dev/null 2>> ../$FILENAME.txt

    # sources
    echo "60% iteration progres ... starting: duval sources.[size]"
    /usr/bin/time -v ./duval sources.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval sources.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval sources.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval sources.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval sources.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "64% iteration progres ... starting: rDuval sources.[size]"
    /usr/bin/time -v ./rDuval sources.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval sources.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval sources.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval sources.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval sources.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "68% iteration progres ... starting: suffix_array sources.[size]"
    /usr/bin/time -v ./suffix_array sources.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array sources.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array sources.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array sources.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array sources.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "72% iteration progres ... starting: lrm_isa sources.[size]"
    /usr/bin/time -v ./lrm_isa sources.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa sources.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa sources.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa sources.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa sources.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "76% iteration progres ... starting: nsv_isa sources.[size]"
    /usr/bin/time -v ./nsv_isa sources.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa sources.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa sources.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa sources.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa sources.50MB > /dev/null 2>> ../$FILENAME.txt

    # proteins
    echo "80% iteration progres ... starting: duval proteins.[size]"
    /usr/bin/time -v ./duval proteins.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval proteins.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval proteins.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval proteins.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./duval proteins.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "84% iteration progres ... starting: rDuval proteins.[size]"
    /usr/bin/time -v ./rDuval proteins.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval proteins.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval proteins.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval proteins.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./rDuval proteins.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "88% iteration progres ... starting: suffix_array proteins.[size]"
    /usr/bin/time -v ./suffix_array proteins.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array proteins.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array proteins.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array proteins.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./suffix_array proteins.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "92% iteration progres ... starting: lrm_isa proteins.[size]"
    /usr/bin/time -v ./lrm_isa proteins.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa proteins.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa proteins.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa proteins.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./lrm_isa proteins.50MB > /dev/null 2>> ../$FILENAME.txt

    echo "96% iteration progres ... starting: nsv_isa proteins.[size]"
    /usr/bin/time -v ./nsv_isa proteins.10MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa proteins.20MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa proteins.30MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa proteins.40MB > /dev/null 2>> ../$FILENAME.txt
    /usr/bin/time -v ./nsv_isa proteins.50MB > /dev/null 2>> ../$FILENAME.txt

done