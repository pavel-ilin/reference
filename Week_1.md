# Code Writing Exercises

* Q1: Change the "print" code below so it produces the following output when run: 1 2 hello

```javascript
print(1, 2, "hello");
```

* Q2: Change the "print" code below so it produces the following output when run:

1

1 2

1 2 3

```javascript
print(1);
print(1,2);
print(1,2,3);
```

# Code Variables Exercises

* Q1: Change just one line of the code below so it produces the following output when run.

xyz123

xyz123 xyz123

xyz123 xyz123 xyz123

```javascript
x = "xyz123";
print(x);
print(x, x);
print(x, x, x);
```

# Digital Image Exercises

* Q1: How many colors can a single pixel show at one time?
```javascript
1
```

* Q2: In the RGB scheme, what are the RGB numbers to make pure white? Please type in the red, green, and blue numbers separated by spaces like this: 100 126 255
```javascript
255 255 255
````

* Q3: What are the RGB numbers to make bright yellow? (Please type in the red, green, and blue numbers separated by spaces like this: 100 126 255)
```javascritp
255 255 0
```

# Image Code Exercises

* Q1: Write code to set the pixel at (0, 0) to blue (i.e. blue value is 255, red and green are left at 0).

```javascript
image = new SimpleImage("x.png");
image.setZoom(20);

pixel = image.getPixel(0, 0);
pixel.setRed(0);
pixel.setGreen(0);
pixel.setBlue(255);

print(image);
```

* Q2: Write code to set the pixel at (0, 0) to be violet (i.e. red and blue both 255, green left at 0).

```javascript
image = new SimpleImage("x.png");
image.setZoom(20);
pixel = image.getPixel(0, 0);

pixel.setRed(255);
pixel.setGreen(0);
pixel.setBlue(255);

print(image);
```

* Q3: Write code to set the pixel at (1, 0) to be red.

```javascript
image = new SimpleImage("x.png");
image.setZoom(20);
pixel = image.getPixel(1, 0);
pixel.setRed(255);
print(image);
```
