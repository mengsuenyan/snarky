open pin add fold_lib .
open pin add tuple_lib .
open pin add bitstring_lib .
opam pin add interval_union .
opam pin add ppx_snarky .
opam pin add meja .
open pin add snarky .

#!/bin/bash
mkdir -p ~/bin
dune build ./snarky.exe
dune build meja/meja.exe

mv _build/default/snarky.exe ~/bin/snarky
mv _build/default/meja/meja.exe ~/bin/meja

echo "I've placed the binaries 'snarky' and 'meja' in ~/bin/."
echo "Please make sure they are on your path by adding the following line to"
echo "one of your ~/.profile, ~/.bash_profile, ~/.bashrc, etc.:"
echo
echo 'export PATH="$HOME/bin:$PATH"'
