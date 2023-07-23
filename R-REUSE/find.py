# Read in the file
with open('rawdata.data', 'r') as file :
  filedata = file.read()

# Replace the target string
filedata = filedata.replace(',-', 'mohsen')




# Write the file out again
with open('Eslah.txt', 'w') as file:
  file.write(filedata)
