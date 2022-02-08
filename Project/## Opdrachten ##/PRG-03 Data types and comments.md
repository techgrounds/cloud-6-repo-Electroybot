# Data types and comments

## Introduction:  
Under the hood, a computer can only see strings of zeros and ones. Programming languages make use of data types to tell the computer how to interpret those strings.  
For example, when the computer needs to read the binary string 01000001, it will need to know the data type to determine whether it means 65 or “A”.  

### This is a non exhaustive list of some important data types in Python: 
- Boolean  
A binary state that is either True or False.  
boolean = True  

- string  
Technically an array of characters. Strings are denoted using “ ” double quotes or ‘ ’ single quotes.  
string = "This is a string"  

- int
An integer is a whole number. Ints can be both positive and negative.  
integer = 6  

- float
A floating-point number is a decimal number.    
floating_point = 18.5  

Comments are lines that do not get processed as code. This can be used for multiple purposes. For example, you can write a short description of what a block of code does. You can also ‘comment out’ some code, so that it is temporarily removed. This can be useful for testing and debugging.  

## Requirements:  
- Python
- VS Code

## Exercise 1:
- Create a new script.
- Copy the code below into your script.
a = 'int'
b = 7
c = False
d = "18.5"
- Determine the data types of all four variables (a, b, c, d) using a built in function.  
![Kijk](https://github.com/techgrounds/cloud-6-repo-Electroybot/blob/main/00_includes/%23%23%20Project%20%23%23/PRG-03/Ex%2001%2001.JPG?raw=true)
- Make a new variable x and give it the value b + d. Print the value of x. This will raise an error.   
![Kijk](https://github.com/techgrounds/cloud-6-repo-Electroybot/blob/main/00_includes/%23%23%20Project%20%23%23/PRG-03/Ex%2001%2002.JPG?raw=true)
Fix it so that print(x) prints a float.  
![Kijk](https://github.com/techgrounds/cloud-6-repo-Electroybot/blob/main/00_includes/%23%23%20Project%20%23%23/PRG-03/Ex%2001%2003.JPG?raw=true)
- Write a comment above every line of code that tells the reader what is going on in your script.  
Zie screenshots.  

## Exercise 2:
- Create a new script.
- Use the input() function to get input from the user. Store that input in a variable.
![Kijk](https://github.com/techgrounds/cloud-6-repo-Electroybot/blob/main/00_includes/%23%23%20Project%20%23%23/PRG-03/Ex%2002%2001.JPG?raw=true)  
- Find out what data type the output of input() is. See if it is different for different kinds of input (numbers, words, etc.).
![Kijk](https://github.com/techgrounds/cloud-6-repo-Electroybot/blob/main/00_includes/%23%23%20Project%20%23%23/PRG-03/Ex%2002%2002.JPG?raw=true)

## Problemen
Geen. 

## Bronnen
- https://www.w3schools.com/python/python_datatypes.asp
- https://www.w3schools.com/python/python_comments.asp
- https://www.w3schools.com/python/ref_func_input.asp
- https://appdividend.com/2022/01/27/how-to-check-type-of-variable-in-python/#:~:text=To%20check%20the%20data%20type,mainly%20used%20for%20debugging%20purposes.
- https://pythontutor.com/