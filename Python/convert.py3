replace = ", "

file = open("input.txt", "r")
file2 = open("output.txt", "w")

text = ""
i = -1

for line in file:
   line=line.strip('\n')
   i += 1
   if i%4 == 0:
      text += '),'
      file2.writelines(text)
      text = '\n(' + line
   else:
      text += replace + line


file2.writelines(text)

file.close()
file2.close()