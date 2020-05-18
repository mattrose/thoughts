# *put your thoughts on the internet* 
[Check it out!](https://thoughts.maren.hup.is)

## How it works
* Type `thoughts` in a terminal
* Vim opens. Type your thought and then `:wq`
* *thoughts* outputs a single, self-contained HTML document with your thought appended. The thought is timestamped and the timestamp is linkified.
* *thoughts* pushes your updated `thoughts.html` to github. It's up to you to get it on a server.

## Requirements
* Bash
* POSIX coreutils
* Git
* Vim

*Note:  Portability is a major priority. thoughts avoids non-POSIX flags in coreutils invocations, so should run anywhere with Bash, Vim, and Git. Eventually sh will replace Bash, and Vim won't be required.

## Install
Download the most recent release from [here](https://github.com/marenbeam/thoughts/releases). `master` is used for development, and is sometimes broken.

Install from any reasonable location with `./install.sh`. The install script is brittle, but simple. If it's misbehaving, don't be afraid to peek at the source.

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

*A note about formatting your thoughts*  
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
  * ~Use POSIX coreutils so it can run on Mac~ **done!**
  * Use sh rather than bash
  * Source editor from environment
* Hopes
  * Automatically linkify URLs
  * Support basic user congifuration in a `thoughts.conf`
  * Add `thoughts update`
  * Add `thoughts help`
* Dreams
  * Support a small subset of markdown (without introducing new dependencies or writing a parser)
    * Nested, unordered lists
    * Single backticks for inline code
    * Triple backtick codeblocks (no syntax highlighting)
    * `**bold**` and `*italic*`
    * Headings?
  * Edit/delete previous thoughts
  * Preview thoughts
* Prayers
  * Post from mobile

<3
