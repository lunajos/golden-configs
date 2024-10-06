# golden-configs
This project houses useful rc config file. LIke vimrc, bashrc, etc
## Vim Commands

# Vim Commands

## Basic Movement

| Command | Description |
| ------- | ----------- |
| `h`     | Move left   |
| `j`     | Move down   |
| `k`     | Move up     |
| `l`     | Move right  |
| `0`     | Move to beginning of line |
| `$`     | Move to end of line |
| `w`     | Move to next word |
| `b`     | Move to previous word |
| `e`     | Move to the end of the word |
| `gg`    | Go to the beginning of the file |
| `G`     | Go to the end of the file |
| `Ctrl + d` | Scroll down half a page |
| `Ctrl + u` | Scroll up half a page |
| `Ctrl + f` | Scroll one page forward |
| `Ctrl + b` | Scroll one page backward |
| `}`      | Jump to the next paragraph |
| `{`      | Jump to the previous paragraph |

## Editing Text

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `i`          | Insert before the cursor           |
| `I`          | Insert at the beginning of the line|
| `a`          | Append after the cursor            |
| `A`          | Append at the end of the line      |
| `o`          | Open a new line below the cursor   |
| `O`          | Open a new line above the cursor   |
| `x`          | Delete the character under the cursor |
| `s`          | Delete character and start inserting |
| `S`          | Delete the entire line and start inserting |
| `dd`         | Delete the current line            |
| `d$`         | Delete from cursor to end of line  |
| `D`          | Delete from cursor to end of line  |
| `cw`         | Change word                        |
| `cc`         | Change (replace) the entire line   |
| `C`          | Change from cursor to end of line  |
| `r`          | Replace a single character         |
| `R`          | Enter replace mode                 |
| `u`          | Undo                              |
| `Ctrl + r`   | Redo                              |
| `.`          | Repeat the last command            |
| `gU`         | Uppercase from cursor to end of line |
| `gu`         | Lowercase from cursor to end of line |

## Yank, Paste, and Cut

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `yy`         | Yank (copy) the current line       |
| `yw`         | Yank a word                        |
| `y$`         | Yank to the end of the line        |
| `p`          | Paste after the cursor             |
| `P`          | Paste before the cursor            |
| `dd`         | Cut (delete) the current line      |
| `daw`        | Delete around a word               |
| `diw`        | Delete inside a word               |
| `"0p`        | Paste from the yank register       |
| `"ap`        | Paste from register `a`            |
| `"+y`        | Yank to system clipboard           |
| `"+p`        | Paste from system clipboard        |

## Visual Mode

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `v`          | Enter visual mode (character-wise selection) |
| `V`          | Enter visual line mode             |
| `Ctrl + v`   | Enter visual block mode            |
| `gv`         | Reselect the last visual selection |
| `y`          | Yank the selected text             |
| `d`          | Delete the selected text           |
| `~`          | Toggle case of selected text       |
| `I`          | Insert text at the beginning of selected block (Visual Block Mode) |
| `A`          | Append text at the end of selected block (Visual Block Mode) |
| `>`          | Indent the selected text           |
| `<`          | Unindent the selected text         |
| `=`          | Auto-indent selected text          |

## Searching

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `/pattern`   | Search for `pattern`               |
| `?pattern`   | Search backward for `pattern`      |
| `n`          | Repeat the search forward          |
| `N`          | Repeat the search backward         |
| `*`          | Search for the word under the cursor forward |
| `#`          | Search for the word under the cursor backward |
| `:%s/pattern/replacement/g` | Substitute `pattern` with `replacement` globally |
| `:%s/pattern/replacement/gc` | Substitute with confirmation |
| `:noh`       | Clear search highlighting          |
| `/\%>10l\%<20l` | Search between lines 10 and 20  |
| `\v`         | Use very magic mode (simplifies regex usage) |
| `\c`         | Ignore case in search              |

## Advanced Search and Replace

| Command                               | Description                                     |
| ------------------------------------- | ----------------------------------------------- |
| `:%s/\v(foo|bar)/baz/g`               | Replace either "foo" or "bar" with "baz" globally |
| `:%s/\<foo\>/bar/g`                   | Replace whole word "foo" with "bar"             |
| `:.,+5s/foo/bar/g`                    | Replace "foo" with "bar" in the next 5 lines    |
| `:%s/\d\+/XXX/g`                      | Replace all numbers with "XXX" globally         |
| `:%s/\v(\d+)\.(\d+)/\2.\1/g`          | Swap two numbers separated by a period          |
| `:%s/\v(apple|orange)/fruit/gc`       | Replace "apple" or "orange" with "fruit", with confirmation |
| `:%s/foo/\=toupper('bar')/g`          | Replace "foo" with uppercase "BAR" using expressions |
| `:%s/\d\+/\=submatch(0) + 1/g`        | Increment all numbers in the file               |

## Window Splitting

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `:split` or `:sp` | Split window horizontally     |
| `:vsplit` or `:vsp` | Split window vertically     |
| `Ctrl + w` + `w` | Switch between windows         |
| `Ctrl + w` + `q` | Quit a window                  |
| `Ctrl + w` + `v` | Vertical split                 |
| `Ctrl + w` + `s` | Horizontal split               |
| `Ctrl + w` + `r` | Rotate windows                 |
| `Ctrl + w` + `=` | Equalize window sizes          |
| `Ctrl + w` + `x` | Swap windows                   |

## Buffers and Tabs

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `:e filename`| Open a file (buffer)               |
| `:bnext` or `:bn` | Go to the next buffer         |
| `:bprev` or `:bp` | Go to the previous buffer     |
| `:bd`        | Delete (close) a buffer            |
| `:tabnew filename` | Open a new tab               |
| `:tabnext`   | Go to the next tab                 |
| `:tabprev`   | Go to the previous tab             |
| `:tabclose`  | Close the current tab              |
| `:tabs`      | List all open tabs                 |
| `:tabmove`   | Move the current tab to a new position |

## Autocompletion

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `Ctrl + n`   | Autocomplete next suggestion       |
| `Ctrl + p`   | Autocomplete previous suggestion   |
| `Ctrl + x Ctrl + o` | Trigger omni-completion     |
| `Ctrl + x Ctrl + l` | Complete entire line        |
| `Ctrl + x Ctrl + f` | Complete file names         |

## Macros

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `qa`         | Start recording a macro into register `a` |
| `q`          | Stop recording the macro           |
| `@a`         | Execute macro stored in register `a` |
| `@@`         | Repeat the last executed macro     |
| `qA`         | Append commands to the existing macro in register `a` |

## File Operations

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `:w`         | Save the file                      |
| `:w filename`| Save the file with a new name      |
| `:q`         | Quit Vim                           |
| `:q!`        | Quit without saving                |
| `:wq`        | Save and quit                      |
| `:x` or `ZZ` | Save and quit                      |
| `:e!`        | Reload the file, discarding changes|
| `:r filename`| Read the contents of a file into the current buffer |

## Marks and Jumps

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `ma`         | Set mark `a` at the cursor position|
| `'a`         | Jump to the beginning of the line where mark `a` was set |
| `\`a`        | Jump to the exact position of mark `a` |
| `''`         | Jump back to the previous location |
| `Ctrl + o`   | Jump back to the previous cursor position |
| `Ctrl + i`   | Jump forward to the next cursor position |
| `:marks`     | List all marks                     |

## Registers

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `"aY`        | Yank into register `a`             |
| `"ap`        | Paste from register `a`            |
| `:reg`       | Show all registers                 |
| `"0p`        | Paste from the yank register       |
| `"*p`        | Paste from system clipboard (on Unix-like systems) |
| `"+y`        | Yank to system clipboard           |

## Folding

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `zc`         | Close a fold                       |
| `zo`         | Open a fold                        |
| `za`         | Toggle a fold                      |
| `zR`         | Open all folds                     |
| `zM`         | Close all folds                    |
| `zv`         | Expand folds to reveal the cursor  |
| `zi`         | Toggle folding on/off              |

## Indentation

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `>>`         | Indent the current line            |
| `<<`         | Unindent the current line          |
| `=`          | Auto-indent the current line or selected lines |
| `=%`         | Indent the current block (based on matching pairs like `{}`) |
| `gg=G`       | Auto-indent the entire file        |

## Command-Line Mode

| Command      | Description                        |
| ------------ | ---------------------------------- |
| `q:`         | Open command-line history          |
| `q/`         | Open search history                |
| `Ctrl + f`   | Edit command line in full-screen mode |
| `Ctrl + r`   | Insert the contents of a register into the command-line |
| `Ctrl + p`   | Cycle through previous commands    |
| `Ctrl + n`   | Cycle through next commands        |

