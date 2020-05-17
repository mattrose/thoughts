
# *"put your thoughts on the internet"* 
[Check it out!](https://thoughts.maren.hup.is)

## How it works
* Type `thought` in a terminal
* Vim opens. Type your thought and then `:wq`
* *thoughts* outputs a single, self-contained HTML document with your thought appended. The thought is timestamped and the timestamp is linkified.
* *thoughts* pushes your updated `thoughts.html` to github. It's up to you to get it on a server.

## Requirements
* Bash
* GNU coreutils
* Git

## Install
Install from any reasonable location with `./install.sh`. The install script is brittle, but simple. If it's misbehaving, don't be afraid to peek at the source. Currently GNU sed is required (thoughts won't work on Mac).

~thoughts~ can be installed on multiple computers, all updating the same remote `thoughts.html`. The installer doesn't handle this natively, but it's not too hard to set up.

First install (you aren't already using thoughts on another computer):
* install with `./install.sh`
* add `~/.local/bin` to your PATH
* create a repo in ~/.local/share/thoughts and point it at an empty remote origin. Then:
  * `cd ~/.local/share/thoughts`
  * `$ git add .`
  * `$ git commit -m "init"`
  * `$ git push`
* from anywhere, type `thought`

Installing on a second computer:
* install with `./install.sh`
* somewhere else, clone the remote repo you've been using to store your thoughts
* copy **all** of its contents into ~/.local/share/thoughts, overwriting any existing files with the same names
* use ~thoughts~ as usual

*A note about formatting in thoughts*
Newlines are converted into `<br>` in all cases, so intentionally spaced out paragraphs are respected, but
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

### Future
* Plans
  * Use POSIX coreutils so it can run on Mac
* Hopes
  * Automatically linkify URLs
  * Support basic user congifuration in a `thoughts.conf`
* Dreams
  * Support a small subset of markdown (without introducing new dependencies or writing a parser)
    * unordered lists (no nesting)
    * ``backticks`` for inline code
    * triple backtick codeblocks (no syntax highlighting)
    * `**bold**` and `*italic*`
    * Headings?
* Prayers
  * Post from mobile

<3
