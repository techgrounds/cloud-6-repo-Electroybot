import csv

keys = ["First name", "Last Name", "Job title", "Company"]

knv = {   "First name" : input("First name: "),
          "Last name" : input("Last name: "),
          "Job title" : input("Job title: "),
          "Company" : input("Company: ") }

filename = "Roy_test.csv"

with open(filename, "a") as csvfile:
    writer = csv.DictWriter(csvfile, fieldnames = keys)
    writer.writeheader()
    writer.writerows(knv)

print (knv)