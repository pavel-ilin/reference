# Software

Q1: The CPU in the computer directly "runs" a sequence of what type of instruction?

```
Machine Code
```

Q2: After a CPU runs an instruction, what does it most often do next?

```
Runs the next instruction in the sequence of instructions
```

Q3: Suppose you double click Firefox.exe on a computer to run it. Which one of the following best describes what happens?

```
The operating system copies the instructions for Firefox from disk to RAM and then the CPU runs the instructions in RAM.
```

# Computer Languages

Q1: Which one of the following best describe what a C++ compiler does?

```
Translates C++ source code into machine code. 
```

Q2: The CPU's machine code has only simple, low-level instructions. A computer language (such as Javascript) adds high-level features, such as the for-loop we have used. Which one of the following is a low-level instruction?

```
Add two numbers together.
```

Q3: Firefox is an open source program, so anyone can get access to the source code. Which one of the following is something that is possible because Firefox is open source?

```
Anyone is free to run the compiler to produce and distribute their own version of Firefox.exe.
```

# Computer Network

Q1: Suppose a computer wants to send a packet on ethernet, as shown in lecture. The computer first waits for what?

```
Waits for the ethernet wire to be quiet.
```

Q2: Suppose we are using the same checksum scheme as in lecture: add up all the bytes, and take just the last two digits of the sum. What is the checksum of the following bytes: 101, 202, 103, 100, 210, 120

```
36
```

Q3: What is the purpose of a packet checksum?

```
Allow the recipient to detect if bytes received were corrupted in transit.
```

# The Internet - TCP/IP

Q1: Which one of the following is not a valid IP address?

```
42.257.99.11
```
Q2: Which one of the following is generally not true about routers?

```
Routers check the central internet-map which shows routes for all packets
```
Q3: What does ping do?

```
Sends a "are you there" packet to a computer, getting back a "yes" packet
```

# Table Data

Q1: Write code to print the row for the name "Atticus".

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
   if (row.getField("name") == "Atticus") {
    print(row);
  }
}
```

Q2: Write code to print the rows for the name "River". In this case, there are two such rows, but the same basic code pattern as for question 1 works. This shows how the loop really is just testing every row.

```javascript
table = new SimpleTable("baby-2010.csv");
for (row: table) {
   if (row.getField("name") == "River") {
    print(row);
  }
```

Q3: Write code to print the rows where the rank is less than (<) 10, i.e. ranks 1 through 9.

```javascript
table = new SimpleTable("baby-2010.csv");
for (rank: table) {
  if (rank.getField("rank") < 10) {
    print(rank);
  }
}
```

Q4: Write code to print the rows where the rank is greater than 950.

```javascript
table = new SimpleTable("baby-2010.csv");
for (rank: table) {
  if (rank.getField("rank") > 950) {
    print(rank);
  }
}
```
