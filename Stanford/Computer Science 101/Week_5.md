# Table startsWith endsWith

Q1: Write code to print all the rows where the name starts with "X".

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
  if (row.getField("name").startsWith("X")) {
    print(row);
  }
}
```

Q2: Write code to print all the rows where the name starts with "Xz".

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
  if (row.getField("name").startsWith("Xz")) {
    print(row);
  }
}
```

Q3: Write code to print all the rows where the name ends with "x".

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
  if (row.getField("name").endsWith("x")) {
    print(row);
  }
}
```

# Table Boolean Logic

Q1: Write code to print all the rows where the name starts with "X" or the name starts with "Y". 

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
  if (row.getField("name").startsWith("X") ||
      row.getField("name").startsWith("Y")) {
    print(row);
  }
}
```

Q2: Write code to print all the rows where the name starts with "B" and the name ends with "a". 

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
  if (row.getField("name").startsWith("B") &&
      row.getField("name").endsWith("a")) {
    print(row);
  }
}
```

Q3: Write code to print all the rows where the name ends with "i" and the gender is "boy". 

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
  if (row.getField("name").endsWith("i") &&
      row.getField("gender") == "boy") {
    print(row);
  }
}
```

# Table Counting

Q1: Write code to count and print number of names starting with the letter "O".

```javascript
table = new SimpleTable("baby-2010.csv");
count = 0;
for (row: table) {
  if (row.getField("name").startsWith("A")) {
    print(row);
    count = count + 1;  // increases the value in count by 1
  }
}
print("count:", count);

```

Q2: Write code to count and print number of girl names starting with "T".

```javascrifp
table = new SimpleTable("baby-2010.csv");
count = 0;
for (row: table) {
  if (row.getField("name").startsWith("T") &&
      row.getField("gender") == "girl")  {
    count = count + 1;  // increases the value in count by 1
  }
}
print("count:", count);
```

Q3: Write code to count and print number of boy names ending with "d".

```javascrifp
table = new SimpleTable("baby-2010.csv");
count = 0;
for (row: table) {
  if (row.getField("name").endsWith("d") &&
      row.getField("gender") == "boy")  {
    count = count + 1;  // increases the value in count by 1
  }
}
print("count:", count);
```

