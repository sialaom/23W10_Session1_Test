# For loop
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
# While loop
i = 1
while i < 6:
    print(i)
    i += 1
# Nested loop
adj = ["red", "big", "tasty"]
fruits = ["apple", "banana", "cherry"]
for a in adj:
    for f in fruits:
        print(a, f)
# Range loop
for x in range(6):
    print(x)
# Continue statement
for x in range(6):
    if x == 3:
        continue
    print(x)
# Break statement
for x in range(6):
    if x == 3:
        break
    print(x)
