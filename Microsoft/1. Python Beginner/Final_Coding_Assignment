```python
def adding_report(report="A"):
    total = 0
    items = ""
    while True:
        digit = input("Enter an number or \"Q\" to quit: ")
        if digit.isdigit() == True:
            total = int(total) + int(digit)
            if report.upper() == "A":
                items = items + digit + "\n"
        elif digit.upper().startswith("Q") == True:
            if report.upper() == "A":
                print("\n" + "Items:" + "\n" + str(items))
                print("Total: " + str(total))
                break
            elif report.upper() == "T":
                print("\n" + "Total: " + str(total))
                break
        else:
            print(digit, "is invalid input")

adding_report()
```
