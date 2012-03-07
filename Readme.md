zsh-output-highlighting
=======================

Syntax highlighting for command's output in zsh. Use cat, grep and awk with style !

How to install
--------------

### With oh-my-zsh

* Download the script or clone this repository in [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh) plugins directory:

        cd ~/.oh-my-zsh/custom/plugins
        git clone git://github.com/ricardrobin/zsh-output-highlighting.git

* Activate the plugin in `~/.zshrc`:

        plugins=( [plugins...] zsh-output-highlighting [plugins...] )

* Source `~/.zshrc`  to take changes into account:

        source ~/.zshrc

Dependencies
------------

* highlight

        brew install highlight # On OSX or use your regular package manager

How to tweak
------------

This script is obviously not perfect at all !
Feel free to add files definitions in the `zsh-output-highlighting.zsh` file, then send me a pull request.

Thanks
------

* [oh-my-zsh](http://github.com/robbyrussell/oh-my-zsh)
* [This article that I totally ripped off !](http://b.inty.se/blag/syntax-highlighting-cat-sed-awk-etc) Thanks to his author ([inty](https://github.com/inty) that really wrote this piece of code (not me) ! That's why the licence is undefined: you should only use this for personal purposes ! 