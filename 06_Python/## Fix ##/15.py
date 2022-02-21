foo = ''
for i in range(12):
	if i == 0 or i == 4 or i == 8:
		foo += 'a'
	else:
		for j in range(1):
			foo += '5'
			for k in range(3):
				foo += '|'
				
print(foo)