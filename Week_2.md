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
