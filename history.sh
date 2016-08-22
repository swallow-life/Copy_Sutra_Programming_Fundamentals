touch .ocamlinit
vim .ocamlinit#日本語対応
opam init
opam switch list
opam switch 4.02.3
eval `opam config env`

sudo apt-get install rlwrap
#rlwrap ocaml