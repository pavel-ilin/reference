Use words.txt as the file name

```python
fname = input("Enter file name: ")
fh = open(fname)

for text in fh:
    text = text.rstrip()
    print(text.upper())
```

Use the file name mbox-short.txt as the file name

```python
fname = input("Enter file name: ")
fh = open(fname)
average = 0
count = 0
for line in fh:
    if not line.startswith("X-DSPAM-Confidence:") : continue
    pos = line.find(" ")
    val = line[pos:].rstrip()
    val = float(val)
    count = count + 1
    average = average + val
        
print ("Average spam confidence:", average/count)
```
