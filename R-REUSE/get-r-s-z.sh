#!/bin/bash
for run in {1..300}; do
     rm rawdata3.data &> /dev/null
     export LINE=1 ; sed -n "${LINE}p" rawdata2.data > rawdata3.data
    python3 chaintx.py
    chmod +x get-r-s-z-2.sh
    sed -i -e 's/\r$//' get-r-s-z-2.sh
     ./get-r-s-z-2.sh
     sed -i '1d' rawdata2.data
     rm rawdata3.data &> /dev/null
     
    
done