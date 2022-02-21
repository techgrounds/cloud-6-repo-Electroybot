a = 'int'
b = 7
c = False
d = "18.5"

# Dankzij 'type' weet je welk data type het betreft, kijk maar eens als je op 'run' klikt.
print (type(a))
print (type(b))
print (type(c))
print (type(d))

# Make a new variable x and give it the value b + d. Print the value of x. This will raise an error. Fix it so that print(x) prints a float.
x = b + float(d)
print (x)