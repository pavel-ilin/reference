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
