# Read in the file
with open('Eslah2.txt', 'r') as file :
  filedata = file.read()

# Replace the target string
filedata = filedata.replace('"', 'focus')




# Write the file out again
with open('Eslah3.txt', 'w') as file:
  file.write(filedata)
