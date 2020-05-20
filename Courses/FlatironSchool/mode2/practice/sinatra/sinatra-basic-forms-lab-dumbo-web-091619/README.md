# Sinatra Basic Forms Lab

<img src="https://s3.amazonaws.com/learn-verified/puppies.gif" hspace="10" align="right" width="300">

Your local pet adoption store has asked you to build their new website. First
and foremost, the store needs a form for their staff to add puppies that are
available for adoption. Good thing you love puppies _and_ coding!

## Objectives

1. Implement a POST request to the controller to display data from a user in
   the view
2. Implement both POST and GET requests
3. Connect a controller action with both a view and a model

## Instructions

The focus of this lab is to build a way for a user to go to a homepage,
follow a link to a form where they can enter a puppy's information, and, upon
submission, view the puppy's information.

1. Build out a puppy class in `models/puppy.rb`. Puppies should have `name`,
   `breed`, and `months_old` attributes. You will need to be able to pass these three
   attributes to initialization, as well as readers or accessors for the attributes.

2. In `app.rb` build out a GET request to load a homepage. The homepage
   should go to the main route `/`.

3. The home page will also need a new view `index.erb`. This page should
   welcome you to the Puppy Adoption Site. Add this view to the controller action.

4. Now, we need to create a form for a user to list a new puppy that is
   available for adoption. You can create this form in `views/create_puppy.erb`.
   Remember, you'll need to set up another controller action for a user to be
   able to view this form in the browser. The "submit" button
   of a form can be an `<input>` element with a `type` of `"submit"` (or a
   `<button>` element with a `type` of `"submit`) — a plain old `<button>`
   won't do it. If you want to change the text in the button, check out these docs:

- [MDN: Input — submit](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/submit)
- [MDN: Button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/button)

5. Now we need to make sure the form is being submitted properly. You'll need
   to have a third controller action that takes the input from the user and
   renders a third view (`views/display_puppy.erb`) which displays the info for
   the puppy that was just created. Create an instance of a puppy to hold the data about the puppy you just created.

6. Add a link on the homepage to the new puppy form.

<p class='util--hide'>View <a href='https://learn.co/lessons/sinatra-basic-forms-lab'>Sinatra Basic Forms Lab</a> on Learn.co and start learning to code for free.</p>
