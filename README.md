# vim-remux

**Rerun tests in the next tmux pane with the press of a key.** Consider it a light-weight alternative to [vim-dispatch].

1. Open Vim in tmux.
2. Open a tmux split pane and run your tests there, like type `npm test` or something.
3. Edit some files in Vim and press <kbd>Ctrl</kbd> + <kbd>S</kbd>. Remux will save the current file and type *up-enter* in the next tmux pane for you.

![](http://ricostacruz.com/til/images/tmux-repeat.gif)

[vim-dispatch]: https://github.com/tpope/vim-dispatch

<br>

## Install

```vim
Plug 'rstacruz/vim-remux'
```

<br>

## Configuration

```vim
let g:remux_key = '<M-s>'  " defaults to <C-s>
```

...or bind `:Remux` to whatever you like.

<br>

## Thanks

**vim-remux** © 2015+, Rico Sta. Cruz. Released under the [MIT] License.<br>
Authored and maintained by Rico Sta. Cruz with help from contributors ([list][contributors]).

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[MIT]: http://mit-license.org/
[contributors]: http://github.com/rstacruz/vim-remux/contributors
