
# *"put your thoughts on the internet"* 
[Look at it](https://thoughts.maren.hup.is)

## Install
Install from any reasonable location with `./install.sh`

I can't make any promises about that install script! (maybe one day)

Currently you have to have GNU sed on your system or it won't work, or maybe it'll just work wrong. Who knows! I definitely have plans to make plans to make it overall more portable

Finally, thoughts' installer isn't currently able to handle the *I'm already using thoughts on another computer and now I want to install it on a second computer and point it at the same repo* case. such a setup is manual, but not very hard.

First install (you aren't already using thoughts on another machine):
* install with `./install.sh`
* create a repo in ~/.local/share/thoughts and point it at a remote origin. Also do:
  * `$ git add .`
  * `$ git commit -m "init"`
  * `$ git push`
* from anywhere, type `thought`
* enter your thought (currently you have to use vim sorry it's hardcoded maybe one day I'll fix that)
* save and exit
* your thought is added to the html document found at `~/.local/share/thoughts/thoughts.html`
* your `thoughts.html` is pushed to github

Installing on a second machine:
* install thoughts with `./install.sh`
* somewhere else, clone the remote repo you've already been using to store your thoughts
* copy **all** of its contents into ~/.local/share/thoughts, overwriting any existing files with the same names
* use thoughts as usual

*A note about formatting in thoughts*
Probably almost all characters are valid and won't break the script. Newlines are converted into `<br>` in all cases, so intentionally spaced out paragraphs are respected, but
```
if
   you
          type
   this
```
```
then
you
get
this
```

<3
