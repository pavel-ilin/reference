
# Image Logic Exercise

Q1: Here is the [fence-ivy.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/fence-ivy.jpg). Write code that picks out the pixels of the green leaves in the image (using the > avg * factor technique, as in lecture). For each green pixel identified, set its green value to 0. The result is that the green leaves are changed to a sort of weird purple color, since setting green to 0, we just have red and blue contributing.

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

Q2: Here is the [stop.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/stop.jpg). For the stop.jpg image, write code that picks out the blue sky (using the > avg * factor technique, as in lecture). Change the blue pixels to be red=20 green=20 blue=20 .. so it looks like nighttime. Adjust your code so it changes the sky, but not the white letters in the sign (which are technically a little blue).

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

Q3: Here is the [curb.jpg image](https://lagunita.stanford.edu/c4x/Engineering/CS101/asset/curb.jpg). The goal for this problem is to change the curb to look blue. Detect the red pixels of the curb using the avg technique. For each pixel, change its red and green values to be half the average value, and change its blue value to 1.2 times the average value. In effect, this sets red and green low and blue high, making it look kind of blue. Note that the blue effect will apply to the reddish plants off to the right as well -- now they are blueish plants.

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
Q2: For the next problem, we'll accomplish a sort of artistic effect, working with the [redwood.jpg image](https://lagunita.stanford.edu/assets/courseware/v1/6487ea9f87a143966e9fb26217f2fae4/c4x/Engineering/CS101/asset/redwood.jpg) and the [pebbles.jpg image](https://lagunita.stanford.edu/assets/courseware/v1/a51b79b6149a16518c1eaf524cb574f7/c4x/Engineering/CS101/asset/pebbles.jpg). Write bluescreen code to modify the redwood.jpg image, replacing the trunk and some of the branches of the tree with pixels from pebbles.jpg. The result is a sort of fanciful looking stone-tree image. Adjust the code so the lower trunk is changed to pebbles, but not too much of the greenery next to the trunk.

```javascript
image = new SimpleImage("redwood.jpg");
back = new SimpleImage("pebbles.jpg");
back.setSameSize(image);

for (pixel: image) {
  avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;
if (pixel.getRed() > avg * 1.05) {

    pixel2 = back.getPixel(pixel.getX(), pixel.getY());
    pixel.setRed(pixel2.getRed());
    pixel.setGreen(pixel2.getGreen());
    pixel.setBlue(pixel2.getBlue());
  }
}

print(image);
```

Q3: The next problem, Fish Dreams of Paris, uses two images. [paris.jpg](https://lagunita.stanford.edu/assets/courseware/v1/7d61016dbb9ee943757ed9d41a890a98/c4x/Engineering/CS101/asset/paris.jpg) and [striped-fish-blue.jpg](https://lagunita.stanford.edu/assets/courseware/v1/ffca530896a4e0a5544333235a395bf1/c4x/Engineering/CS101/asset/striped-fish-blue.jpg). The "Fish Dreams of Paris" problem.
The striped fish is facing right in front of a blue background. Parts of the fish are blue also -- the eye and the vertical stripe in the middle. For this problem, we'll let the background image replace those two blue areas as well.
Write bluescreen code to place striped-fish-blue.jpg in front of paris.jpg. In particular, adjust the code so that the blue background, the blue middle stripe, and blue eye of the fish all show the paris.jpg pixels. Adjust the code so the blue towel below the fish is almost completely replaced.

```javascript
image = new SimpleImage("striped-fish-blue.jpg");
back = new SimpleImage("paris.jpg");
back.setSameSize(image);

for (pixel: image) {
  avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;
  // your code here
  if (pixel.getBlue() > avg * 0.5) {
    pixel2 = back.getPixel(pixel.getX(), pixel.getY());
    pixel.setRed(pixel2.getRed());
    pixel.setGreen(pixel2.getGreen());
    pixel.setBlue(pixel2.getBlue());
  }
}

print(image);
```

# Bits and Bytes Exercises

Q1: How many different values can be stored in 1 bit?

```
2
```

Q2: How many bits are there in one byte?

```
8
```

Q3: One byte can hold a value from 0 up to what maximum value?

```
255
```

# Kilobytes Megabytes Exercises

Q1: 4000 kilobytes (KB) is approximately equal to how many megabytes (MB)? (For all the problems in this section, just type in a number. The unit (MB or GB or whatever) is always specified in the problem text.)

```
4
```

Q2: Suppose you have 10 image files, each taking up 300 KB. About how many MB of space do they take up overall?

```
3
```

Q3: Suppose you have four 500 MB hard drives plus one 2 GB flash drive. How many GB of capacity is this overall?

```
4
```

Q4: Suppose we have a video camera that produces video data at the rate of 2 GB per hour. Recording for 15 minutes creates about how many MB of data? (Note that the answer is in MB)

```
500
```

# Make Your Own Bluescreen

```javascript
image = new SimpleImage("IMG_0069.jpg");
back = new SimpleImage("1.jpg");
back.setSameSize(image);

for (pixel: image) {
  avg = (pixel.getRed() + pixel.getGreen() + pixel.getBlue())/3;
  // your code here
   if (pixel.getBlue() > avg * 0.92) {
    pixel2 = back.getPixel(pixel.getX(), pixel.getY());
    pixel.setRed(pixel2.getRed());
    pixel.setGreen(pixel2.getGreen());
    pixel.setBlue(pixel2.getBlue());
  }
}
print(image);
```
Original:

![](https://lh3.googleusercontent.com/Cki2pIN7XoLRygkbT7vCM1OZ5qVpCdTt_7zdHw8t6hl2-zd-IrE-pS4qBxxZEdAQiqBAryuCP3qTB587E81Ots3OqDMZ5DwFI8zurwbXKVrYaHlVQI-MwCV1TrxFMx3ZhqnjVlQGKH7WrXSEMMrSsMdWO3S5gTMX94YXaMZZ-kMMlmNWmQfQqCE5xYIRfmYO0hnRFAIxnXWvRVNhJj_4ZBzQkDmmqq_av4HsRS3WMeStWuqLnppeUquQeRMK5i1247DO7FvrfqO-d0-65rzCrlrIzT5y1Vc9rxYWPdDS017M2NAUuQp2OunAvYa6qDQ_9hTHCYNY3xNfUAbZETcs0QyTTgMzjRAgWtIJ7cQUgP2Ccw_T6F6QVdap3xVHfjxmyzUsy1Pu6M4Vd92ZFDUgT1vu_l14uDTMkQ_VIUZn-LAoqsgns1xHEMRwJkR5OEMm1NDEVDUNgfhpMlGbrth3VzIgSk0qrrrswytmb9hgkakJUwqTwcadh0ApF_9ZlRSphCeOES2eq0du2Ec65jQUtsJLDVlIB50g9W1RvhpM6FcjdncxC0LtfUl1dlFkxKkwjQg3Iuz9zZHfbYptx3tufPzMCAkjMXmz2bseEKB2pwPZiaQc4vQOXNWYkWUjrRU_FTsttxDSeevQflV2zf7nHg6_0xAWuzc=w800-h449-no)

![](https://lh3.googleusercontent.com/XbyV-LIkhoJ0Phdm1-pkx5Knx5PvR4h3X7tuOnuFJGmHv2rtSFmoGV3gmJJxFcIAnUtIlDtbvN1CY8RjEaMbfG4WM5lTi0bjdRgj0IX9iVQH56n19mlVvJzxzebfdx7q6-Bj4onqAqklOKE4BMZJmYN8nnlRFNXuMRWiyrssC6bTKM9ZWgG17Dsx-ODOw_nsjltMceoLyVPH8Ow4qtwNaSCp4RsKXbaIatWlTPF8NW45ssB4JTMXkRS5ZuBe8bJ8fuEt9Ll2cejasoN2N6Q0WfBuGTkj-uSnKA-0CamddwITUlf_VqfPL1dDKHpmtCzcXtJzlpo3u3FuTsklAREqyLEFF-0hW9LVsb95XeoF518Fx7PxmByQP1E-agFj78-VaxGwxYHFq22t6bo-aFcsmc-Swb7SV7IR_F7eybZ99mHTHIyYhTqdRe2uhYYd9ZyU0Rlomid75xk5nN3LRdI5mHT9vGPoA1DLVag4dfMhF77EdqUdw4m7vAahFHsAHPRNl7acp5uBdxkhKaIPD1pRYFEsOcpNTOjIbSgy-5zadKkm7nrpzb6Dr_CYLU74AzCU_xUGjF2AwcvjEHfPpGflEhHo13NUba1ox5MVyjARAGME5HSiQj8eLWmR9xfMFjrHdPB5BJrA3MqrxqNzHdWkyei6GUrK0SM=w800-h600-no)


Result:

![Result](https://lh3.googleusercontent.com/5Vz74DfiiQ04efkKVUFQH4ohFiZWmy7wg378boPweB-r_tXqyoH8gx5J6eL3jhHGTyWh_pTa7FjEmidpIsECS3ewzMQe4gpNWw4ddDNjU6Oyps4f1ND1voOU8F18oYKWup17RWNUCs3hjEErCWqKNuL3s8Pln95UAgSF1hi0muhVMTlFrE73uKHBwEG8El9Jadv1wg1SFLCQVTjKgFRzdeY1EsN367Pvg61MWB0CYJDQbYeKha-NLbDV7PNBfNXM3ZJWZO95xjh8x5pSTRj0KWIyGGDxilJtwP5eQJJa5ZWK9Ri-YRjTAbZLI9HxBRvrP5FJ9YlP4IG5U_tNANzYQdbztwgYhTwmjR3EWWdeK1pgdXzBuYNmCrSkROI0Dp7FdKVE0pKTnpMfXHsapH1HNm2kKCv4OhKiD87UaT6lELBYfhH8V1OdZJxIk6vmyCVibrsby6jXYeO54SEUIJhf9vabnnCThVF4CRZ0jiWUd6vzzDxX7OVRJZPi_olsefulWSV5klbRMs_jr0JDK5rjrEYquBS9J7QFJx9XGMRHFxXVf0l21zGVjZmf4uYEROdVm4dYADLCOtWk3Aol1OiYlyDCtFMve4mind4qvxMU--Y6WR_dqxmwA4oAgVqmWHVx0W7BhX3yUaoOnNAlg4a5PRNzh8P4Btk=w800-h600-no)
