# *put your thoughts on the internet* 
[Check it out!](https://thoughts.maren.hup.is)

## How it works
*thoughts is a work in progress!*

* Type `thoughts` in a terminal and press `<enter>`
* Your preferred editor opens. Type your thought, then save and exit
* *thoughts* outputs a single, self-contained HTML file with your thought added. The thought is timestamped and the timestamp is linkified.
* *thoughts* pushes your updated `thoughts.html` to a remote git repository of your choosing. It's up to you to host it somewhere.

## Requirements
* any POSIX shell (sh, dash, bash, ksh, zsh, and maybe others)
* POSIX coreutils
* Git

*Note: Portability is the primary priority. Please open an issue if any shell code or coreutil invocations behave unexpectedly.*

## Installing
*Download the most recent release from [here](https://github.com/marenbeam/thoughts/releases). `master` is used for development, and is sometimes broken.*

Install from anywhere with `./install.sh`.

### First install:
*(Do this if you aren't already using thoughts on another computer)*
* Install with `./install.sh`
* Add `~/.local/bin` to your PATH
* Use `git init` to create a git repository in `~/.local/share/thoughts`, then point it at an empty remote origin
* Be sure it's working:
  * `$ cd ~/.local/share/thoughts`
  * `$ git add .`
  * `$ git commit -m "init"`
  * `$ git push`
* From anywhere, type `thoughts`

### Installing on another computer:
*thoughts* can be installed on multiple computers, all updating the same remote `thoughts.html`.

* Install with `./install.sh another`
* Follow the prompts

## Commands
* `$ thoughts update`
  * Download and install the latest tagged release
* `$ thoughts edit`
  * Edit your previously posted thoughts
* `$ thoughts help`
  * Show some helpful information

## Notes
* Newlines are converted into `<br>` in all cases, so space your paragraphs as you wish!
* *thoughts* is wrapping lots of git behavior. If a git thing is breaking, inspect the situation in `$HOME/.local/share/thoughts` (that's where all *thoughts* data lives)
* *thoughts* is currently pulling a font from a CDN ([xz/fonts](https://fonts.xz.style/), not Google). In the future, this will be off/on/type configurable. If you'd like to disable it before then, simply remove the import from `.head.html`
* If you post a thought that contains HTML, it will definitely render in the browser.

## Future
* ~Use POSIX coreutils so it can run on Mac/BSD/etc.~ Done!
* ~Use sh rather than bash~ Done!
* ~Source editor from environment~ Done!
* ~Improve installer~ Done!
* ~Add `thoughts update`~ Done!
* Automatically linkify URLs
* Support basic user configuration in a `thoughts.conf`
* ~Add `thoughts help`~ Done!
* Support a small subset of markdown
  * Nested, unordered lists
  * Single backticks for inline code
  * Triple backtick codeblocks
  * `**bold**`, `*italic*`, and `***bold italic***`
* ~Edit/delete previous thoughts~ Done!
* Preview thoughts

<3
