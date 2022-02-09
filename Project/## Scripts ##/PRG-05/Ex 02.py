try:
    getal = int (input("Voer een willekeurig getal in: "))
    if getal == 100:
        print ("Dat is een mooi, rond getal! ")
    elif getal < 100:
        print ("Bedankt, het ingevoerde getal is lager dan 100. ")
    else:
        print ("Is dit jouw inzet in procenten? ")
except ValueError:
        print ("Je kunt enkel hele getallen invoeren! ")


