# Bash Navigation

Tell me username
```
whoami
```

Print working directory
```
pwd
```

Move up
```
cd ..
```

Back to default directory
```
cd ~
or
cd
```

Jump to specific directory
```
cd /path....
```

As you type in commands in the shell, you can use "tab completion." Tab completion allows the shell to be smart and to try and guess what command you want to run when you hit the tab. If there's only one logical way to complete your command, bash will fill in the rest for you, or will show you the possibilities and you can add more letters until you can tab-complete your command.

# Files And Directories

List Directory Files in the Shell

```
ls
```

We can list the contents of another directory by providing an absolute or relative path
```
ls pathname
```

### Using Flags with Commands

A flag is denotated by a - ("dash").
This prints out a list of all the files with "long form" output: it will tell us details about which user account owns the file, what the permissions for users are on that file, and the file name.
```
ls -l
```

Single-character options can typically be combined with each other. For example, in the ls command, h is an option on the l flag meaning "human readable formats." They can be combined with a meaning "all information including "hidden files" (files that start with a ., often used for internal operating system configuration — we'll expand on this in a moment).
```
ls -lah

ls -l -a -h
```

### Move or Rename Files and Directories

Move, or mv is a command that moves one or more files or directories from one place to another.

```
mv filename /dir1
```

We can also rename file or directory using the mv command. To rename a file with mv, the third word on the command line must end in the new filename.

```
mv original_program.rb renamed_program.rb
```

We could combine these two usages as:

```
mv temp_download.gif ~/Desktop/cats_with_weapons/ninja_cat.gif
```

### Copy Files

If you think about it, move is really "copy, but delete the original." Well, cp does a mv, but doesn't delete the original. It's therefore a "copy."
It uses the same syntax as mv:

```
cp letter_to_mom.txt letter_to_mom-2019-02-15.txt
```

If you want to copy a directory and its file contents, you need to use the -r flag.

```
cp -r february_cat_gifs ~/Desktop/vital_media_files
```

### Create Empty Files

We can use the touch command to create empty files in the current directory.

```
$ touch hello_world.rb
```

### Make New Directories

We can make directories with the mkdir command:
```
mkdir name_of_directory
```

### Remove Files

To delete a file, we can enter rm at a shell prompt. Note: Deleting a file with rm is permanent. This action cannot be undone.
```
rm hello_world.rb
```

Much like cp, if you want to delete a directory, you need to provide the -r flag
```
rm -r ~/Desktop/pokemon_fan_fiction
```

There additional options to rm:
- i (interactive) — Prompts you to confirm the deletion. This option can stop you from deleting a file by mistake.
- f (force) — Overrides interactive mode and removes the file(s) without prompting. Use this with caution. This action cannot be undone!
- v (verbose) — Shows the progress of the files as they are being removed.

# Bash Programming

### View File Contents

We can print the contents of a file by using the cat command. Entering

```
cat [filename]
```

The open command is interesting because it will trigger the default action associated with the file type. "Default actions" are defined by the operating system. This command is only available on Mac OSX.

```
open .
open hello_world.rb
```

### Print Text

The echo command takes a string and prints it to the screen.

```
echo "Hi world"
```

### Redirect Text

You can "redirect" echo text into a file:
```
echo "I'm printing to the screen" >> [filename]
```
BE CAREFUL Using > when you mean >> can make you real sad because > "clobbers" or "overwrites" the file. Some files on your system are very important and "clobbering" them could hurt your machine!

### Set PATH and Environment Variables

An environment variable is a variable which can be configured to change the way the shell works and used by multiple applications or processes. You might tell the shell, via an environment variable "use colors whenever you can" or "never use colors in output".
