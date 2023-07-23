with open("addrone.mnk") as myfile:

    listfile="\n".join(f'wget -qO- "https://www.walletexplorer.com/address/{line.rstrip()[:]}?page=8&format=csv" >> rawdata.data' for line in myfile)
 
f = open("get-raw.sh", 'w')
f.write("#!/bin/bash" + "\n")
f.write("" + listfile + "" + "\n")
f.close()