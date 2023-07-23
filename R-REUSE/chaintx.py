with open("rawdata3.data") as myfile:

    listfile="\n".join(f'python3 getz_input.py -txid {line.rstrip()[:]} >> mohsen.txt' for line in myfile)

f = open("get-r-s-z-2.sh", 'w')
f.write("#!/bin/bash" + "\n")
f.write("" + listfile + "" + "\n")
f.close()
