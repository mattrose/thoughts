# *put your thoughts on the internet* 
[Check it out!](https://thoughts.maren.hup.is)

## How it works
*thoughts is a work in progress! The installer is brittle and prone to requiring manual intervention. One day this will change, but until then just know that at least it's simple, and once it's working you shouldn't have to futz with it.*

* Type `thoughts` in a terminal
* Your preferred editor opens. Type your thought and then save and quit
* *thoughts* outputs a single, self-contained HTML document with your thought appended. The thought is timestamped and the timestamp is linkified.
* *thoughts* pushes your updated `thoughts.html` to github. It's up to you to get it on a server.

## Requirements
* any POSIX shell
* POSIX coreutils
* Git

*Note:  Portability is the primary priority. Please open an issue if you experience any incorrect behavior on your system.*

## Install
*Download the most recent release from [here](https://github.com/marenbeam/thoughts/releases). `master` is used for development, and is sometimes broken.*

Install from any reasonable location with `./install.sh`. The installer is brittle, but simple. If it's misbehaving, don't be afraid to peek at the source.

*thoughts* can be installed on multiple computers, all updating the same remote `thoughts.html`. The installer doesn't handle this natively, but it's not too hard to set up.

First install (you aren't already using *thoughts* on another computer):
* Install with `./install.sh`
* Add `~/.local/bin` to your PATH
* Create a repo in `~/.local/share/thoughts` and point it at an empty remote origin
* Be sure it's working:
  * `cd ~/.local/share/thoughts`
  * `$ git add .`
  * `$ git commit -m "init"`
  * `$ git push`
* From anywhere, type `thoughts`

Installing on a second computer:
* Install with `./install.sh`
* Somewhere else, clone the remote repo you've been using to store your thoughts
* Copy all of its contents into `~/.local/share/thoughts`, overwriting any existing files with the same names
* Use *thoughts* as usual

*A note about formatting your thoughts:*  
Newlines are converted into `<br>` in all cases. So intentionally spaced out paragraphs are respected, but
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
  * ~Use POSIX coreutils so it can run on Mac/BSD/etc.~
    * Done!
  * ~Use sh rather than bash~
    * Done! Shell is sourced with `/usr/bin/env sh`
  * ~Source editor from environment~
    * Done! *thoughts* will use your preferred editor or fall back to `vi`
  * Improve installer
  * Add `thoughts update`
* Hopes
  * Automatically linkify URLs
  * Support basic user congifuration in a `thoughts.conf`
  * Add `thoughts help`
* Dreams
  * Support a small subset of markdown (without introducing new dependencies or writing a parser)
    * Nested, unordered lists
    * Single backticks for inline code
    * Triple backtick codeblocks (no syntax highlighting)
    * `**bold**`, `*italic*`, and `***bold italic***`
  * Edit/delete previous thoughts
  * Preview thoughts

<3
