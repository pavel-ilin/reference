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
# Table Counting Multiple

Q1: Do more baby names start with "A" or "B"?

```javascript
table = new SimpleTable("baby-2010.csv");
count1 = 0;
count2 = 0;
for (row: table) {
   if (row.getField("name").startsWith("A")) {
    count1 = count1 + 1;
  }
  if (row.getField("name").startsWith("B")) {
    count2 = count2 + 1;
  }
}
print("A count:", count1);
print("B count:", count2);
```

Q2: Now we'll look at the survey data. How many people identified "red" or "blue" as their favorite color?

```javascript
table = new SimpleTable("survey-2012.csv");
table.convertToLowerCase();
count1 = 0;
count2 = 0;
for (row: table) {
  if (row.getField("color") == "red"){
    count1 = count1 + 1;
  }
  if (row.getField("color") == "blue") {
    count2 = count2 + 1;
}
}
print("Red count:", count1);
print("Blue count:", count2);
```

Q3: Instead of looking at the whole survey, let's look only at the people who identified "coke" as their favorite soda (not "diet coke", just "coke"). How many of them ("coke" rows) identified "red" or "blue" as their favorite color?

```javascript
table = new SimpleTable("survey-2012.csv");
table.convertToLowerCase();
count1 = 0;
count2 = 0;
for (row: table) {
  if (row.getField("color") == "red" && 
      row.getField("soda") == "coke")
      {
    count1 = count1 + 1;
  }
  if (row.getField("color") == "blue" && 
      row.getField("soda") == "coke") {
    count2 = count2 + 1;
}
}
print("Red-coke count:", count1);
print("Blue-coke count:", count2);
```
