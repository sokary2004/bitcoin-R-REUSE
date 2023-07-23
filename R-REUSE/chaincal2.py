with open("addrone.mnk") as myfile:

    listfile="\n".join(f'python3 ./calculator-focus.py -wallet {line.rstrip()[:]} ' for line in myfile)

f = open("calculator2.sh", 'w')
f.write("#!/bin/bash" + "\n")
f.write("" + listfile + "" + "\n")
f.close()
