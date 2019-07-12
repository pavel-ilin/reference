[Course project](https://app.codesignal.com/challenge/Ys49PjLyoRCgB3m9D)
---
# Introduction to HTML

Here’s an example of an HTML boilerplate. It should be inserted at the beginning of any HTML document to let browsers know that what follows is, well, HTML:

```HTML
<!DOCTYPE html>
<html>
  <head>
   <title> </title>
  </head>

<body>
</body>

</html>
```
- <!DOCTYPE html> - This tag gives your web browser the heads up that the following document will be written in HTML.
- The <html> tag begins your HTML document. It says, “Everything between my opening tag (<html>) and my closing tag (</html>) will be part of the following HTML-based instructions.”
- <head> - The <head> tag contains most of the under-the-hood stuff that helps identify your webpage and allows it to show up in search results. This is called metadata.
- <title> - The <title> tag may sound obvious, but in fact, it doesn’t display any kind of title text on your webpage. Instead, the <title> tag provides your page with a name that will appear in search engine results. It’s also the text that appears at the top of your browser window or tab. See what appears for Netflix, Google, and Medium in the image below?
- <body> - You’ll use the <body> tag to hold what’s actually displayed on your webpage, including all of your text, hyperlinks, and images. See the text and images that appear on Medium’s website? All of that is included in the <body>.

### HTML Hierarchy
HTML tags follow an established hierarchy to help structure information. Elements that sit inside of other elements are called child elements, while those that contain other elements are called parent elements.

So, <h1> is a child element of its parent, the <body> tag.

# Adding Content to a Webpage

### The Anchor Element Tag

![Anchor Element Tag](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/html-unit-assets/intro-to-html/annotated-code.png)

- The a in the tag stands for anchor. An anchor tag is a means of linking to another place; either to a location on the same page or to a completely different website, like you’re doing here.
- The href stands for hypertext reference. This is the web address to which you are linking.
- The target attribute is a finishing touch. It isn’t strictly necessary, but it’s good to include. Setting the target value to **_blank** tells the browser to open the destination page in a new window or tab. If we don’t include a target element, when a user clicks on the link, the new site will open in the same window (and take them away from our page).
- After the target, you can enter the display text, which the user will see on the page (instead of the long, messy hyperlink).

### Adding Images in HTML
```html
<img src="https://bit.ly/2FsuPLG" alt="Tater Tot Casserole" width="324" height="242" />
```
- src - src stands for source, as in where the image comes from. This is usually a URL.
- alt - The alt stands for alternative text, commonly called “alt text.” Some of your page’s visitors may be visually impaired or won’t be able to see the casserole image. Alt text is used to help indicate content for those viewers. In this case, a screen reader would say, “Tater Tot Casserole.”
- Width and Height - These specify the image’s width and height in pixels.

# Options for Styling Text

### Organizing Content on a Webpage

### Semantic HTML Tags:
- header, main, footer, article, aside, nav
- Tell you something about the content they contain.
- Indicate how the content will be displayed on the webpage.

![Semantic HTML Tags](https://ga-instruction.s3.amazonaws.com/assets/intro-tech/html-unit-assets/intro-to-html/website-sections.png)

Semantic HTML helps you introduce meaning and organization to your webpages. Most webpages have some common elements; a navigation bar that takes you to different parts of a website, along with a main section of content.

### Non-Semantic HTML Tags:
- div, span
- Don’t tell you much about the content they contain.
- Are used more generally to organize groups of elements.

Sometimes, you just need to group things together, and the result won’t make up a specific part of a website.
- <div> - stands for division, as in the division of content. Think of <div> tags as a way to group the information on your webpage into logical sections. After that, you can style.
- <span> - You can also group content on a smaller level — within a sentence or paragraph — using the <span> tag. Maybe you want the first word in a sentence to be a different color, or a larger size. You can wrap simply that word in <span>!
```HTML
<p>I want to call out <span>these words</span> in this sentence, but none of the other ones.</p>
```
