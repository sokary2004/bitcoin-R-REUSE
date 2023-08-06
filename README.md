# bitcoin-R-REUSE

Random vulnerability
Recovering Bitcoin private keys using weak signatures with random vulnerability from the blockchain.

https://youtu.be/eAAhwSE_APQ


On December 25th of 2012 Nils Schneider first discovered a potential weakness in some Bitcoin implementations. Have a look at this transaction:

transaction: 9ec4bc49e828d924af1d1029cacf709431abbde46d59554b62bc270e3b29c4b1
input script 1:
30440220d47ce4c025c35ec440bc81d99834a624875161a26bf56ef7fdc0f5d52f843ad1022044e1ff2dfd8102cf7a47c21d5c9fd5701610d04953c6836596b4fe9dd2f53e3e0104dbd0c61532279cf72981c3584fc32216e0127699635c2789f549e0730c059b81ae133016a69c21e23f1859a95f06d52b7bf149a8f2fe4e8535c8a829b449c5ff

input script 2:
30440220d47ce4c025c35ec440bc81d99834a624875161a26bf56ef7fdc0f5d52f843ad102209a5f1c75e461d7ceb1cf3cab9013eb2dc85b6d0da8c3c6e27e3a5a5b3faa5bab0104dbd0c61532279cf72981c3584fc32216e0127699635c2789f549e0730c059b81ae133016a69c21e23f1859a95f06d52b7bf149a8f2fe4e8535c8a829b449c5ff
This transactions has two inputs and one output. If you look closely at the two input scripts you will notice there are quite a few equal bytes at the start and at the end. Those bytes at the end is the hex-encoded public key of the address spending the coins so there’s nothing wrong with that. However, the first half of the script is the actual signature (r, s):

r1: d47ce4c025c35ec440bc81d99834a624875161a26bf56ef7fdc0f5d52f843ad1
r2: d47ce4c025c35ec440bc81d99834a624875161a26bf56ef7fdc0f5d52f843ad1

s1: 44e1ff2dfd8102cf7a47c21d5c9fd5701610d04953c6836596b4fe9dd2f53e3e
s2: 9a5f1c75e461d7ceb1cf3cab9013eb2dc85b6d0da8c3c6e27e3a5a5b3faa5bab
As you can see, r1 equals r2. This is a huge problem. We’ll be able torecover the private key to this public key:

private key = (z1*s2 - z2*s1)/(r*(s1-s2))
 

We just need to find z1 and z2! These are the hashes of the outputs to be signed. Let’s fetch the output transations and calculate them (it is calculated by OP_CHECKSIG):

z1: c0e2d0a89a348de88fda08211c70d1d7e52ccef2eb9459911bf977d587784c6e
z2: 17b0f41c8c337ac1e18c98759e83a8cccbc368dd9d89e5f03cb633c265fd0ddc
That’s it. Let’s setup our sagenotebook like this:

p  = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141
r  = 0xd47ce4c025c35ec440bc81d99834a624875161a26bf56ef7fdc0f5d52f843ad1
s1 = 0x44e1ff2dfd8102cf7a47c21d5c9fd5701610d04953c6836596b4fe9dd2f53e3e
s2 = 0x9a5f1c75e461d7ceb1cf3cab9013eb2dc85b6d0da8c3c6e27e3a5a5b3faa5bab
z1 = 0xc0e2d0a89a348de88fda08211c70d1d7e52ccef2eb9459911bf977d587784c6e
z2 = 0x17b0f41c8c337ac1e18c98759e83a8cccbc368dd9d89e5f03cb633c265fd0ddc

============================================================================

put addresses in this file addr.mnk   ==> try to find address have r-reuse or not ===>scanner.sh


put just one address in actaddr.mnk    ===> if you find address have r-reuse put address in actaddr.mnk and run scanner2.sh


Donations : bc1q962duatv26hzw080uxu65damn06l5pgsdnx6lt

