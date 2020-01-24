# Dynamic URL Routes

## Objectives

1. Explain how dynamic routes prevent web applications from having to be rewritten as new information is added
2. Create dynamic routes 

## Why Dynamic Routes?

When you create a new repository on GitHub, how do URLs like `github.com/jmburges/my-repo` get generated? In our current examples, we would have to create a new `if` statement for each possible URL path. Since this is a dynamic application, our application can't be rewritten every time a new user signs up. So the concept of "dynamic routes" was created.

## Setting Up Dynamic Routes

Let's assume we have a playlister app which has an array of Songs. First let's look at our `Song` object

```ruby
#song.rb

class Song

attr_accessor :title, :artist

end
```

Pretty simple class. Now we have our web app.

```ruby
class Application

  @@songs = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello","Adele")]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    
    @@songs.each do |song|
      resp.write "#{song.title}\n"
    end

    resp.finish
  end
end
```

We want more information about each song though. Similarily to GitHub, we want to be able to go to a URL like `localhost:9292/songs/Sorry` and get all the information on Sorry. We are doing routes like this instead of just plain `GET` params because it's easier to read. Remember the path is given to us as a `string`. We could therefore write something like this:


```ruby
class Application

  @@songs = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello","Adele")]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/songs/Sorry"
      resp.write @@songs[0].artist
    elsif req.path == "/songs/Hello"
      resp.write @@songs[1].artist
    end

    resp.finish
  end
end
```

This is silly though, because every time we create a new `Song` we would have to create a new `if` statement. Thankfully, because paths are `strings`, we can do a regex match against the path. Then we just grab the content after the `/song/` to figure out which `Song` our user would like.


```ruby
class Application

  @@songs = [Song.new("Sorry", "Justin Bieber"),
            Song.new("Hello","Adele")]

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/songs/)

      song_title = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
      song = @@songs.find{|s| s.title == song_title}

      resp.write song.artist
    end

    resp.finish
  end
end
```

Now our routes are dynamic! We can just add songs, and everything else is taken care of and works for us. You have written a lot of Ruby; take comfort in your skills.

<p class='util--hide'>View <a href='https://learn.co/lessons/rack-dynamic-paths-readme'>Dynamic URL Routes</a> on Learn.co and start learning to code for free.</p>
