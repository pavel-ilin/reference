# Deploy on Day One

## Contents

|Section                            |
|-----------------------------------|
|[History](#history)                |
|[Assignment](#assignment)          |
|[Requirements](#requirements)      |
|[File Structure](#structure)       |
|[Getting Started](#getting-started)|
|[Next Steps](#next-steps)          |
|[Final Steps](#final-steps)        |
|[Resources](#resources)            |
|[Issues](#issues)                  |

## History

Welcome to Flatiron! One of the first tasks we do together as a cohort is create
student info pages to help in the process of getting to know each other. You and
your peers will be filling in these pages, which will be linked together through
an index page displaying all students.

An index page looks something like [this][index]. Links from this page go to
individual profiles, which look like [this][profile]. You will be making and
deploying an index page that contains info for all of the people at your current
table.  

[index]: https://web.archive.org/web/20171011234750/http://students.flatironschool.com/
[profile]: https://curriculum-content.s3.amazonaws.com/module-1/deploy_one_day_one_profile.gif

## Assignment

Your assignment is to create a student profile for someone sitting at your
table. By the end of this project, every student should have a profile for
themselves that was created by someone else and every student should have
created a profile for someone else. If you are sitting at a table of four, it
might be easiest to pair up. If you are sitting at a table of three, it might be
easiest to create the profile of the student clockwise to you. If you are
sitting at a...well you get the picture.

Now, you might be freaking out and wondering, "Am I making a webapp?!?!" Not
today — we'll just be working with HTML and file structures. You don't need to
know Rails, JavaScript, or even Ruby for this project. And your classmates and
instructors are here to help!

You'll have about three hours to complete the first section of this lab. Use
that time to get to know your table, get familiar with git workflows, and
re-familiarize yourself with HTML. If you feel stuck, ask any instructor for
help. **Keep in mind everyone in your table will be pushing to the same repository.**  
Think about using a workflow with your teammates that will
minimize conflicts.

## Requirements

Please collect the following content from your assigned student for their
profile. This content doesn't have to be finalized, but you need something to
get started. They'll be using this content as the project evolves for their
resume and other profiles online.

* Name
* Github Username
* Blog URL (if they don't already have a blog it will be their-github-username.github.io)
* Tagline
* Profile Picture (something normal, a headshot, of a good reusable size that
  can be easily cropped)
* Background Picture
* Treehouse Account
* CoderWall Account
* CodeSchool Account
* Favorite Websites
* Previous Work Experience
* Short Bio
* Twitter URL
* LinkedIn URL
* Education

## Structure

The structure of this project looks something like this:

```text
├── README.md
├── css
│   ├── css style sheets
│   └── fonts
│       └── font files
├── img
│   ├── lots of images here
│   └── students
│       ├── student_name_background.jpg
│       ├── student_name_index.jpg
│       └── student_name_profile.jpg
├── index.html
├── js
│   └── javascipt files
└── students
    └── student_name.html
```

### Files You Will Need to Alter

The only file you'll alter is `index.html`.

### Files You Will Need to Add

While working on this project, you will need to add the following files:

* Add three pictures to the `img/students` folder (they can be jpg or png files):
  * A background picture
  * A picture for the index page
  * A picture for the profile page
* Add one HTML file to the `students/` folder. Use the `student_name.html` for
  reference. In fact, feel free to copy as much of the HTML from
  `student_name.html` into the new file you've created (just don't rename /
  override that file, as that will cause you some git headaches).

## Getting Started

### Group Logistics

* Figure out who is going to write whose profile.

  ![fork](http://ironboard-curriculum-content.s3.amazonaws.com/web-development/deploy-on-day-1/fork.png)

* Have one person at your table [fork][] this repo.
* Git [clone][] the forked repo to that person's machine. Ensure that your
  `index.html` file has the same amount of `<li></li>` elements as you have
  persons on your team (the HTML sections in question are each surrounded by
  `<!-- Begin Student -->` and '<!-- End Student -->' comments). We have
  provided four by default, but you should either remove these or copy/paste to
  reflect the correct amount of people on your team. Assign individuals to
  specific `<li></li>` elements (order matters!).
* Once the count is accurate, the person who forked the repo must git [add][],
  [commit][], and [push][] to your remote master.
* Next, the person who forked the repo must add all team members as
  collaborators. Learn more about that [here][].
* Following, this person should then send the link to their fork to everyone
  sitting at their table.

  ![clone](http://ironboard-curriculum-content.s3.amazonaws.com/web-development/deploy-on-day-1/clone.png)

* Everyone at the table should [clone][] the repo from this fork using this link. Do not clone directly from learn-co-curriculum.

### Individual Instructions

Now that you have the repo, you'll want to get into it. Remember [cd][]? When
you type `pwd` into your terminal and the last part of the text that gets
returned is `deploy-on-day-1...` you're in the right place.
**NOTE In all the hypothetical examples, we're writing a profile for Zoe Perez.**

[cd]: http://linux.about.com/od/commands/a/Example-Uses-Of-The-Command-Cd.htm

Take a look at `index.html` and `students/student_name.html` in the browser. You
can do this many ways but one is by opening finder and right-clicking on
index.html. Then click on "Open with" then the name of your favorite browser.

#### Make a New Branch

* From the root directory, [checkout a new branch][]. This new branch's name
  should be the name of the student whose profile you're going to create.  
  * For instance, the branch would be titled `zoe-perez`.
  * Note: The `master` branch of a project is NEVER a place to do any work.
    `master` is considered the build and you never break the build. So make sure
    you are not working or committing to the `master` branch.

* If you haven't already, switch to the branch you created. To make sure you're
  where you need to be, type `git branch` in your terminal. It should return the
  name of your assigned student emphazised with an asterisk and master. The
  asterisk indicates which branch you're on. It should not be `master`.
  * For instance, typing `pwd` in the terminal would return:

```text
  master
* zoe-perez
```

[checkout a new branch]: http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging#Basic-Branching

#### Add Profile

* In this new branch, make a new HTML file in the `students/` folder. The file
  name should be the name of the student you're creating the profile for. Use
  the file `student_name.html` to see an example of what a profile's HTML could
  look like.
  * For instance, we would create a file `zoe_perez.html` in the main `students` folder.

* Still in this branch you created, add the three photos detailed above to the
  `img/students` folder. The student you're writing the profile for may have to
  email you their desired pictures or send you links to them, etc.
  * For instance, we would add the pictures titled `zoe_perez_background.jpg`,
    `zoe_perez_index.jpg`, and `zoe_perez_profile.jpg` to the `students` folder
    that is inside the `img` folder.
  * File endings are case senstive. When adding an \<image\> tag, make sure that
    the image source is identical to the name of the image file.

* Once you've completed the profile, open up `index.html`. Use the assigned
  `<li></li>` element as a template and fill it out for your fellow
  classmate.

#### Stage and Commit Changes

* Once you're happy with the profile you've created and the changes you've
  made to the index page, type [git status][]. The file you've altered,
  index.html, should appear in the "Tracked Files" section and the files
  you've created should appear in the "Untracked Files" section.

* You'll want to [add][] then [commit][] these changes with a message.

* If you type `git status`, you should see "nothing to commit, working
  directory clean". If you type `git remote -v`, it should display something
  like:

|remote | URL                                                               |         |
|-------|-------------------------------------------------------------------|---------|
|origin |https://github.com/table-member's-github-name/deploy-on-day-1...git| (fetch) |
|origin |https://github.com/table-member's-github-name/deploy-on-day-1...git| (push)  |

[git status]: (http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository#Checking-the-Status-of-Your-Files)

#### Push Up Your Branch

* Now it's time to [push][] to a remote branch. This remote branch doesn't
    exist yet, you're going to create it by pushing.

  * **NOTE: Do not push to master. Do not type anything that contains the word master!**
  * You're going to push to a branch that is the same name as your local branch.
    * For instance, if we're on the branch zoe-perez, we're going to push to zoe-perez.

* To confirm this push worked you can do two things:
  * Type `git branch -a` which will show the remote branch on github.com you
    just created when you pushed.
  * You could also go to the URL of the forked repo. Notice the section that
    looks like
  
  ![branches][]
  
You should be able to click on that arrow and to see a dropdown. From this
dropdown, select the name of the branch you've been working on.

[branches]: http://ironboard-curriculum-content.s3.amazonaws.com/web-development/deploy-on-day-1/branches.png

## Next Steps

### Additional Group Logistics

Since your table is going to be deploying a single web page with all of your
tables profiles, you'll need to merge every branch that your table created
into a single branch. This branch will contain every profile from your table.
The process of merging these branches may result in merge conflicts in
`index.html` and possibly elsewhere. That's totally okay and expected!

Think about the best way to merge all the branches together. Should one person
do it? Should everyone do it in order? Should you merge into a pre-existing
branch, like `master`, or create a totally new branch? You might be wondering
what the best answer is but there isn't a "best answer", just decide on a
strategy and go for it!

### Merge Conflicts

When [merging][], [merge conflicts][] can happen. Generally they look like:

```text
> git branch
  └── master
> git merge zoe-perez
  └── Auto-merging index.html
  └── CONFLICT (content): Merge conflict in index.html
  └── Automatic merge failed; fix conflicts and then commit the result.
```

This just means that you will have to open the files where there are merge
conflicts, in this case, `index.html`, and find the part that looks like:

```text
<<<<<<< HEAD
content here
=======
other content here
>>>>>>> zoe-perez
```

Just decide which one you want to keep or if you want to keep both. Then delete
the parts you don't want and delete the `<<<<HEAD`, `======`, and `>>>>>` parts.
In the process of trying to merge two files, you may notice that chunks of html
end up in the wrong place on the page, and there is a chance you may need to
move things around to be in the proper order again.  If you'd like a visual
reference of what your index page looks like, you can also run `open index.html`
from your command line, in order to view the current state of your page in the
browser.  

Remember, if you have multiple files with merge conflicts, you'll have to repeat
this process with each file. Once you're done selecting which code to retain,
`git add` and `git commit` these changes. Now when you type `git status`, your
terminal should not display "You have unmerged paths."

## Final Steps

Once every profile is on a single branch that is hosted remotely, it's time to
deploy your table's profile page!  This will look like the sample link at the
top of this lesson, but with the cards/profiles for your group only.

* In your browser, navigate to the main github repo for your table.  
* At the top of the page, click on the `Settings` tab (the one with the gear symbol)
* Once on the Settings page, scroll down to the `GitHub Pages` section
* Under "Source," choose "master branch" and click "Save."
* Navigate to `http://username.github.io/repository_name`, and have a look at your page!

 When you have fixed any errors and are ready to share, post your link in Slack
 so the rest of the class can read who you are!

Congratulations, you've completed your first assignment!

Note: From now on, most assignments will be completed in a group but submitted
individually. This means that instead of having a **table** fork an assignment,
**each student** will fork the assignment, minimizing the merge conflicts you'll
encounter in the future.

## Resources

* Git Step Resources
  * [Forking a Repo](https://help.github.com/articles/fork-a-repo)
  * [Cloning a Repo](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository#Cloning-an-Existing-Repository)
  * [Branching](http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging#Basic-Branching)
  * [Adding](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository#Staging-Modified-Files)
  * [Committing Changes](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository#Committing-Your-Changes)
  * [Pushing to Remote Branches](http://git-scm.com/book/en/Git-Basics-Working-with-Remotes#Pushing-to-Your-Remotes)
  * [Merging Branches](http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging#Basic-Merging)
  * [Submitting a Pull Request](https://help.github.com/articles/using-pull-requests#sending-the-pull-request)
* Git Workflow Resources
  * [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
  * [Git Workflow](https://github.com/diaspora/diaspora/wiki/Git-Workflow)
  * [Git Rebase Workflow Explained](http://mettadore.com/analysis/a-simple-git-rebase-workflow-explained/)
  * [How GitHub uses GitHub to Build GitHub](http://zachholman.com/talk/how-github-uses-github-to-build-github)
  * [GitHub Workflow for Submitting Pull Requests](https://openshift.redhat.com/community/wiki/github-workflow-for-submitting-pull-requests)
* Deploying to GitHub Pages
  * [Documentation for how to deploy to GitHub Pages (choose "Project Site" rather than "User or Organization Site")](https://pages.github.com/)

## Issues

A common issue is not being able to authenticate with GitHub. You need to use HTTPS/SSH correctly when cloning the repository in order to be authenticated with GitHub. Checkout and follow:

* [Setting Up Git](https://help.github.com/articles/set-up-git)
* [HTTPS Cloning Errors](https://help.github.com/articles/https-cloning-errors)
* [Setting Up SSH](https://help.github.com/articles/generating-ssh-keys)

[add]: http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository#Staging-Modified-Files
[fork]: https://help.github.com/articles/fork-a-repo

[commit]: http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository#Committing-Your-Changes
[push]: http://git-scm.com/book/en/Git-Basics-Working-with-Remotes#Pushing-to-Your-Remotes
[here]: https://help.github.com/articles/adding-collaborators-to-a-personal-repository/
[clone]: http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository#Cloning-an-Existing-Repository
[merging]: http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging#Basic-Merging
[merge conflict]: http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging#Basic-Merge-Conflicts

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/deploy-on-day-1' title='Deploy on Day One'>Deploy on Day One</a> on Learn.co and start learning to code for free.</p>
