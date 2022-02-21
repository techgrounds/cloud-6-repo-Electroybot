list = [1, 2, 4, 8, 16]
for i in range(len(list)):
    if i == len(list)-1:
        print (list[i] + list[0])
    else:
        print (list[i] + list[i+1])