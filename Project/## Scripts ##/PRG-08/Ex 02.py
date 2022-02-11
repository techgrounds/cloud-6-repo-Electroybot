import csv

keys = ["First name","Last Name","Job title","Company"]

knv = {   "First name " : input ("First name: "),
          "Last name " : input ("Last name: "),
          "Job title " : input ("Job title: "),
          "Company " : input ("Company: ") }

filename = "Roy_test.csv"

with open(filename, "a") as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(knv.keys())
    writer.writerow(knv.values())

    print (knv)


