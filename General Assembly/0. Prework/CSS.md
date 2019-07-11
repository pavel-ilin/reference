[Course project](https://codepen.io/refugee-studio/full/PrLKpx)
---

# HTML, Meet CSS

```CSS
h2 {
  text-weight: bold;
  color: red;
}
```

<h2>: selector
text-weight and color: properties
bold and red: values

### Order Matters

There’s one more important consideration with regard to adding rules in CSS. Remember how the “C” in CSS stands for “cascading”? That just means that CSS is read by your browser in a cascade from top to bottom.

# Styling Text With CSS
- color - The color property changes the color of the text.
- font-size - The font-size rule affects — you guessed it — the size of your font. By default, certain HTML elements are larger than others: <h1> is the largest, followed by <h2>, and so on. But you can also adjust these sizes how ever you’d like.
- font-weight - font-weight defines how thick the text should be.
- font-style - is most often used to make text italic, as you would in a word processor.
- text-transform - text-transform to... upper case: text-transform: uppercase, text-transform: lowercase, text-transform: capitalize.
- text-decoration - can add lines under or through your text: text-decoration: underline
text-decoration: line-through. Most frequently, it’s used to remove the default underline for hyperlinks (the <a> tag in HTML) by setting the value to none.
- text-align - property affects how your content is aligned on the page: centered, right-aligned, or left-aligned (once again, just like in a word processor). It’s written as: text-align: right.

- hover - property of the <a> element via a pseudo-class. Underline appear beneath the link text when and only when someone hovers over the words.
```ccs
a:hover {
  text-decoration: underline;
}
```

### List Styling

The ol (ordered list) is numbered.
The ul (unordered list) comes with solid disc bullet points.

We have several choices for how our bullets can look, such as square (a solid square) or circle (an open circle). Hannah has asked us to remove the bullet points altogether. We can do this by setting the list-style value to none.

### Importing Fonts

[Source of the fonts](https://fonts.google.com/?selection.family=Poiret+One)

```css
@import url('https://fonts.googleapis.com/css?family=Poiret+One&display=swap');
```

### Styling With Fonts

Create a CSS rule with the font-family property, followed by the name of the font in quotes, like this: font-family: 'font name'.

## Classes and IDs

We can give an element a class AND an ID!

### ID
An ID lets us specify a unique label so that we can apply distinct styles to just one thing. You can add an ID to any part of your HTML in order to single it out, then target that ID in the CSS using the # character.


```HTML
<p id="very-unique">This will style me!</p>
<p>But not me</p>
```
```CSS
#very-unique {
  color: #aa12a4;
}
```

### Classes
Class lets us label several elements as belonging to the same group. You can use the same class throughout your HTML in order to apply the same style to many elements, and then target that class in CSS using the . character.

```HTML
<p class="less-unique">This will style me!</p>
<p class="less-unique">End me!</p>
<p>But not me</p>
```

```CSS
.less-unique {
  color: #cd29c0;
}
```

# Adjusting Layout With CSS

## Block vs. Inline Elements

### Block Elements
Headings are perfect examples of block elements. They stack on top of each other in the order they are added.

### Inline Elements
An <a> tag is an inline element. It lines up on the same level as the adjacent elements instead of beginning a new line.

### Changing the Display

We can use the CSS display property to override the default and tell the browser how to display our elements.

display can hold one of four values:
- none: The element won’t display at all.
- inline: The element will display in one horizontal line.
- block: The element will appear stacked and take up the entire width of the page.
- inline-block: Elements will sit next to each other (inline) but can have margin, padding, width, and height properties (block).

### The Box Model

These properties comprise what we call the CSS “box model.” Think of any HTML element as having a “box” that wraps around its content and determines its total height and width.

Here’s what’s in that box:
- The content within the box, or whatever you added in the HTML.
- The padding, or the space that wraps around the content and pushes the borders of the box away.
- The border around the content and padding (which can be styled).
- The margin, or the space around the border that pushes the element away from other elements on the page.
![Box](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/css-unit-assets/content-padding-border-margin.png "Box")

### Specific Margins and Padding

```CSS
div {
 padding: 10px 0px 5px 15px;
}
```
![Margins and Padding](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/css-unit-assets/top-right-bottom-left.png)

### Adjusting Width and Height

```CSS
.social img {
  width: 30px;
  height: 10px;
}
```

### The Position Property
Layout tool, the position property, helps us determine how our elements are positioned on a page.

We’ll look at two common position values:
- Relative positioning means that the element is positioned relative to its normal position on the page — where it is already located. Other content won’t be affected by it.
- Absolute positioning means that the element’s position is adjusted relative to a parent element with a set position. If it has no parent element, or if the parent doesn’t have a set position, it will be adjusted relative to the <body> of the document.

Once we tell an element how it should be displayed, let’s get it to display where we want. We can do this by targeting the top, right, bottom, and left properties. These properties take distance values, like pixels, that measure based on the point from which we would like to place our element.

For example, this styling would push the <div> 20px away from the top of the page and 10px away from the left side of the page:
```CSS
div {
  position: absolute;
  top: 20px;
  left: 10px;
}
```
**Remember:** You’ll need to add the position property (relative or absolute), as well as the directions to get an object to move.

### Position: Relative

Setting position: relative moves an element relative to its original location.

Let’s say we start out with two colored <div>s of the same size. With no set positioning, as block elements, they’re stacked on top of each other and begin in the top-left corner of the page.

If we add in some relative positioning to the top yellow <div>
```CSS
#yellow {
 position: relative;
 top: 100px;
 left: 100px;
}
```
![Position: Relative](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/css-unit-assets/no-positioning-relative-positioning.png)

### Position: Absolute

Using position: absolute will move an element relative to a parent element with a set position, or to the body of the page.

For example, the yellow <div> starts out in the upper left-hand corner. Because it doesn’t have a parent element, when we add absolute positioning, it’s positioned against the <body>. The right and top properties define where it goes. (When one of these properties, like right, is set to 0, it means that the element is 0px away from this side — all the way against it.)

```CSS
div {
 position: absolute;
 right: 0;
 top: 80px;
}
```
![Position: Absolute](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/css-unit-assets/no-positioning-absolute-positioning.png)

# Responsive Layouts

### Width as Percentage

```CSS
#image-grid img {
  width: 100%;
}
```

### The Max-Width Property
```CSS
#image-grid img {
  width: 100%;
  max-width: 500px;
}
```

### Centering With the Margin

margin has two special values that will give elements equal amounts of whitespace:
- margin: 0 gives an element equal whitespace at the top and bottom.
- margin: auto gives an element equal whitespace to the left and right sides.
- margin: 0 auto does both!

### Media Queries

Media queries are the methods CSS uses to apply certain styles based on certain properties, such as screen size. Here’s what one looks like:
```CSS
@media screen and (max-width: 350px) {
  body {
    background-color: red;
  }
}
```
Here’s what the media directive is telling the browser:
![Media Queries](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/css-unit-assets/talking-to-browser.png)

### Media Queries for our Landing Page

We can get a rough idea of image size by dividing the screen into thirds. The max-width for our image grid is 900px and our images are 30% of that, or about 300px wide. Because the images will never get bigger than this, we simply need to answer: What’s the smallest possible size the images should be?

When a screen is 600px wide, our images will be 30% of that, or about 200px wide. Let’s set the media query to kick in when the screen is 600px wide:
```CSS
@media only screen and (max-width: 600px) {
  #image-grid img {
    width: 100%;
  }
}
```
**Pro tip**: Make sure your media query is called after the main rule for your element. You need to keep your most specific rules at the bottom of your styles so that they don’t override any earlier ones.
