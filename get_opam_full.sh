# https://github.com/ocaml/opam#compiling-this-repo
sudo apt-get install ocaml
wget https://github.com/ocaml/opam/releases/download/1.2.2/opam-full-1.2.2.tar.gz
tar xvf opam-full-1.2.2.tar.gz
cd opam-full-1.2.2
./configure
make lib-ext
make
sudo make install

opam install opam-lib --deps-only
./configure
make clean-ext
sudo make libinstall