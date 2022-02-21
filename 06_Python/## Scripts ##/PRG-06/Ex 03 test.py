def average(num):
    sum_num = 0
    for x in num:
        sum_num = sum_num + x          

    avg = sum_num / len(num)
    return avg

print("The average of 128 and 255 is", average([128,255]))