
# Image Logic Exercise

* Q1: Here is the [fence-ivy.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/fence-ivy.jpg). Write code that picks out the pixels of the green leaves in the image (using the > avg * factor technique, as in lecture). For each green pixel identified, set its green value to 0. The result is that the green leaves are changed to a sort of weird purple color, since setting green to 0, we just have red and blue contributing.

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

* Q2: Here is the [stop.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/stop.jpg). For the stop.jpg image, write code that picks out the blue sky (using the > avg * factor technique, as in lecture). Change the blue pixels to be red=20 green=20 blue=20 .. so it looks like nighttime. Adjust your code so it changes the sky, but not the white letters in the sign (which are technically a little blue).

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

* Q3: Here is the [curb.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/curb.jpg). The goal for this problem is to change the curb to look blue. Detect the red pixels of the curb using the avg technique. For each pixel, change its red and green values to be half the average value, and change its blue value to 1.2 times the average value. In effect, this sets red and green low and blue high, making it look kind of blue. Note that the blue effect will apply to the reddish plants off to the right as well -- now they are blueish plants.

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

# Image Bluescreen Exercises

Q1: Here is the [striped-fish-green.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/striped-fish-green.jpg). Write bluescreen code to place this fish in front of the yosemite.jpg background. The fish has bits of blue on it, but that's ok since we're using a green background in this case. Adjust the code so that all of the green towel below the fish disappears. Little flecks of white will appear in the blue middle section of the fish; we're stuck with those with our current technique.

```javascript
image = new SimpleImage("striped-fish-green.jpg");
back = new SimpleImage("yosemite.jpg");
back.setSameSize(image);

for (pixel: image) {
  avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;
   if (pixel.getGreen() > avg * 1.03) {
   
  // 1. Get pixel2 from back image at same x,y (one line)
  
    pixel2 = back.getPixel(pixel.getX(), pixel.getY());

   // 2. Copy pixel2 over to pixel
   
    pixel.setRed(pixel2.getRed());
    pixel.setGreen(pixel2.getGreen());
    pixel.setBlue(pixel2.getBlue());
  }
}
print(image);
```

