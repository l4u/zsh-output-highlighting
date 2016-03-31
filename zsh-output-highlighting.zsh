#!/bin/zsh
cat sed awk grep() {
  syntax=""
  type highlight > /dev/null 2>&1
  if [[ $? -eq 0 ]]; then
    for file in $@; do
      if [ -f $file ]; then
        case $file in
          *.abp)  syntax="abap4";;
          *.abnf) syntax="abnf";;
          *.as)   syntax="actionscript";;
          *.a)    syntax="ada";;
          *.adb)  syntax="ada";;
          *.ads)  syntax="ada";;
          *.gnad) syntax="ada";;
          *.agda) syntax="agda";;
          *.dat)  syntax="ampl";;
          *.run)  syntax="ampl";;
          *.hnd)  syntax="amtrix";;
          *.s4)   syntax="amtrix";;
          *.s4h)  syntax="amtrix";;
          *.s4t)  syntax="amtrix";;
          *.t4)   syntax="amtrix";;
          *.applescript) syntax="applescript";;
          *.arc)  syntax="arc";;
          *.arm)  syntax="arm";;
          # Too lazy
          *.asm)  syntax="assembler";;
          *.awk)  syntax="awk";;
          *.bib)  syntax="bibtex";;
          *.y)    syntax="bison";;
          *.c)    syntax="c";;
          *.c++)  syntax="c";;
          *.cc)   syntax="c";;
          *.cpp)  syntax="c";;
          *.cxx)  syntax="c";;
          *.h)    syntax="c";;
          *.hh)   syntax="c";;
          *.hpp)  syntax="c";;
          *.hxx)  syntax="c";;
          *.clojure) syntax="clojure";;
          *.cs)   syntax="csharp";;
          *.css)  syntax="css";;
          *.diff) syntax="diff";;
          *.patch) syntax="diff";;
          *.erl)  syntax="erlang";;
          *.hrl)  syntax="erlang";;
          *.fs)   syntax="fsharp";;
          *.fsx)  syntax="fsharp";;
          *.go)   syntax="go";;
          *.hs)   syntax="haskell";;
          *.hx)   syntax="haxe";;
          *.html) syntax="html";;
          *.htm)  syntax="htm";;
          *.xhtml) syntax="html";;
          /etc/apache*/*) syntax="httpd";;
          *.java) syntax="java";;
          *.js)   syntax="javascript";;
          *.jsp)  syntax="jsp";;
          *.lhs)  syntax="lhs";;
          *.lua)  syntax="lua";;
          *Makefile) syntax="make";;
          *.mak)  syntax="make";;
          *.mk)   syntax="make";;
          *.objc) syntax="objc";;
          *.m)    syntax="objc";;
          *.mm)   syntax="objc";;
          *.ocaml) syntax="ocaml";;
          *.ml)   syntax="ocaml";;
          *.mli)  syntax="ocaml";;
          *.pas)  syntax="pascal";;
          *.perl) syntax="perl";;
          *.cgi)  syntax="perl";;
          *.pl)   syntax="perl";;
          *.plex) syntax="perl";;
          *.plx)  syntax="perl";;
          *.pm)   syntax="perl";;
          *.php)  syntax="php";;
          *.php3) syntax="php";;
          *.php4) syntax="php";;
          *.php5) syntax="php";;
          *.php6) syntax="php";;
          *.py)   syntax="python";;
          *.rb)   syntax="ruby";;
          *.pp)   syntax="ruby";;
          *.ru)   syntax="ruby";;
          *.rjs)  syntax="ruby";;
          *.ruby) syntax="ruby";;
          *Rakefile) syntax="ruby";;
          *Gemfile) syntax="ruby";;
          *Gemfile.lock) syntax="ruby";;
          *.scala) syntax="scala";;
          *.sbt) syntax="scala";;
          *.sh)   syntax="bash";;
          *.bash) syntax="bash";;
          *.zsh)  syntax="bash";;
          *.bashrc) syntax="bash";;
          *.zshrc) syntax="bash";;
          *.sql)  syntax="sql";;
          *.tex)  syntax="tex";;
          *.vb)   syntax="vb";;
          *.bas)  syntax="vb";;
          *.basic) syntax="vb";;
          *.bi)   syntax="vb";;
          *.vbs)  syntax="vb";;
          *.xml)  syntax="xml";;
          *.dtd)  syntax="xml";;
          *.ecf)  syntax="xml";;
          *.ent)  syntax="xml";;
          *.hdr)  syntax="xml";;
          *.hub)  syntax="xml";;
          *.jnlp) syntax="xml";;
          *.nrm)  syntax="xml";;
          *.sgm)  syntax="xml";;
          *.sgml) syntax="xml";;
          *.svg)  syntax="xml";;
          *.tld)  syntax="xml";;
          *.vxml) syntax="xml";;
          *.wml)  syntax="xml";;
          *.xsl)  syntax="xml";;
        esac
      fi
    done
  fi
  if [[ $syntax != "" ]]; then
    command $0 $@ | highlight -O ansi --syntax=$syntax
  else
    command $0 $@
  fi
}
