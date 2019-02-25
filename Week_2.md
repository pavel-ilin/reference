# Image For-Loop Exercises

1. Q1: Add code inside the loop to modify flowers.jpg like this: set each pixel to have green of 0, leaving the red and blue values unchanged. The result should be that the flowers look red, since the yellow was made of red+green light.

```javascript
image = new SimpleImage("flowers.jpg");

for (pixel: image) {
    pixel.setGreen(0);
}

print(image);
```

2. Q2: Add code inside the loop to modify flowers.jpg like this: set each pixel to have red 255, green 0, blue 0.

```javascript
image = new SimpleImage("flowers.jpg");

for (pixel: image) {
    pixel.setRed(255);
    pixel.setBlue(0);
    pixel.setGreen(0);
}

print(image);
```

# Image Expressions Exercises

1. Q1: Write code to fix the 51020-poppy.png image which should show an orange California Poppy in the foreground (the California state flower!). The background is mostly green with some in the upper-right.

```javascript
image = new SimpleImage("51020-poppy.png");

for (pixel: image) {
  pixel.setRed(pixel.getRed() * 10);
  pixel.setGreen(pixel.getGreen() * 5);
  pixel.setBlue(pixel.getBlue() * 20);
}
print(image);
```

2. Q2: Write code to fix the 51020-stop-sky.png image which should show a red stop sign front with a background of a light blue sky and green tree leaves.

```javascript
image = new SimpleImage("51020-stop-sky.png");

for (pixel: image) {
  pixel.setRed(pixel.getRed() * 20);
  pixel.setGreen(pixel.getGreen() * 10);
  pixel.setBlue(pixel.getBlue() * 5);
}
print(image);
```

3. Q3: Write code to fix the 51020-oranges.png image which should show a box of oranges. The box itself is dull gray. The sign on the box is black, with "organic" written in light orange, and the rest of the letters in white.

```javascript
image = new SimpleImage("51020-oranges.png");

for (pixel: image) {
  pixel.setRed(pixel.getRed() * 20);
  pixel.setGreen(pixel.getGreen() * 5);
  pixel.setBlue(pixel.getBlue() * 10);

}
print(image);
```

# Image Puzzle Exercises

1. Q1: Write code to fix the puzzle-iron.png image. The red and green values in the image are random noise, so they should be set to 0. The real image is in the blue values, which have been divide by 10. The "solution" image will look blue, since it is exclusively in the blue values, so don't worry about that. We'll see a way to fix that blueness in a later section.

```javascript
image = new SimpleImage("puzzle-iron.png");

for (pixel: image) {
  pixel.setRed(0);
  pixel.setGreen(0);
  pixel.setBlue(pixel.getBlue() * 10);
}
print(image);
```

2. Q2: Write code to fix the puzzle-copper.png image. The red values in the image are random noise, so they should be set to 0. The real image is in the blue and green values, which have been divide by 10.

```javascript
image = new SimpleImage("puzzle-copper.png");

for (pixel: image) {
  pixel.setRed(0);
  pixel.setGreen(pixel.getGreen() * 10);
  pixel.setBlue(pixel.getBlue() *10);
}
print(image);
```

# Grayscale Image Exercises

1. Q1: The [image below](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/golden-gate-red.jpg), golden-gate-red.jpg, shows the golden gate bridge, but all of the data is in the red values. Write code that for each pixel copies the red value over to be the green and blue value. The result will be to change the image to grayscale which will look better.

```javascript
image = new SimpleImage("golden-gate-red.jpg");

for (pixel: image) {
  // Your code here
pixel.setRed(pixel.getRed());
pixel.setGreen(pixel.getRed());
pixel.setBlue(pixel.getRed());
}
print(image);
```

2. Here is the [banana.jpg](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/banana.jpg) image. Write code to change the banana.jpg image to be grayscale. Reminder: here is the line used in the loop to compute the average of the red/green/blue values and store that value in a variable named "avg".

```javascript
image = new SimpleImage("banana.jpg");

for (pixel: image) {
  // Your code here
 avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;
  
  pixel.setRed(avg);
  pixel.setGreen(avg);
  pixel.setBlue(avg);
}
print(image);
```

# Image Logic Exercise

1. Q1: Here is the [fence-ivy.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/fence-ivy.jpg). Write code that picks out the pixels of the green leaves in the image (using the > avg * factor technique, as in lecture). For each green pixel identified, set its green value to 0. The result is that the green leaves are changed to a sort of weird purple color, since setting green to 0, we just have red and blue contributing.

```javascript
image = new SimpleImage("fence-ivy.jpg");

for (pixel: image) {
avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;

if (pixel.getGreen() > avg * 1){
pixel.setRed(160);
pixel.setGreen(0);
pixel.setBlue(160);
  }
}
```

2. Q2: Here is the [stop.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/stop.jpg). For the stop.jpg image, write code that picks out the blue sky (using the > avg * factor technique, as in lecture). Change the blue pixels to be red=20 green=20 blue=20 .. so it looks like nighttime. Adjust your code so it changes the sky, but not the white letters in the sign (which are technically a little blue).

```javascript
image = new SimpleImage("stop.jpg");

for (pixel: image) {
avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;

if (pixel.getBlue() > avg * 1.2){
pixel.setRed(20);
pixel.setGreen(20);
pixel.setBlue(20);
  }
}
```

3. Q3: Here is the [curb.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/curb.jpg). The goal for this problem is to change the curb to look blue. Detect the red pixels of the curb using the avg technique. For each pixel, change its red and green values to be half the average value, and change its blue value to 1.2 times the average value. In effect, this sets red and green low and blue high, making it look kind of blue. Note that the blue effect will apply to the reddish plants off to the right as well -- now they are blueish plants.

```javascript
image = new SimpleImage("curb.jpg");

for (pixel: image) {
avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;

if (pixel.getRed() > avg * 1.2){
pixel.setRed(avg*0.5);
pixel.setGreen(avg*0.5);
pixel.setBlue(1.2 * avg);
  }
}
```
