# PrusaSlicer user settings

A workspace to share custom user settings for PrusaSlicer

We use a simple template repository and shell script to add a tiny bit
of structure to the process of copying (to share) the custom settings
(printer, print, and filament) from PrusaSlicer. There's not much to it,
but the process does strip out a few "print host" settings -- settings
that should really __not__ be shared or distributed.

###### Getting Started

* Create a repository from this template repository.

* Clone your new repository

* Edit the shell script, `make.sh` -- change the path variable, `DATADIR`,
to point to your PrusaSlicer config directory.

###### Develop Settings

* Use PrusaSlicer to create and edit your custom user settings.

###### Posting Changes

```sh
$ ./make.sh     # copy settings files from PrusaSlicer, remove print host info 
$ git commit .  # commit, etc. (git as usual)
$ git push
```
