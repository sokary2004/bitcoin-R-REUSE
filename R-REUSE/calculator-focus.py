#  by Focus
# Donations : bc1q962duatv26hzw080uxu65damn06l5pgsdnx6lt

import sys
import hashlib
import argparse


parser = argparse.ArgumentParser(description='This tool helps to get ECDSA Signature r,s,z values from Bitcoin',epilog='Enjoy the program!')
parser.add_argument("-wallet", help = "add wallet", action="store")
args = parser.parse_args()
wallet = args.wallet

with open('R.txt') as f:
    line_count = 0
    for line in f:
        line != "\n"
        line_count += 1
        
        

r=line_count

with open('S.txt') as f:
    line_count = 0
    for line in f:
        line != "\n"
        line_count += 1
        


s=line_count

if (r>s):
  print('='*70)
  print(f'R={r}\n', end='')
  print(f'S={s}\n', end='')
  print('Wallet have Random vulnerability (R_REUSE)')
  print(f'wallet-address:{wallet}')

else:
  print('='*70)
  print(f'R={r}\n', end='')
  print(f'S={s}\n', end='')
  print(f'The wallet is not vulnerable :{wallet}')


  
