#!/bin/sh -v
file=README.md
./frequencies.pl $file > freq.txt
./huffman.pl freq.txt > huff.txt
cat $file | ./encode.pl huff.txt > enc.huf
cat enc.huf | ./decode.pl huff.txt > dec.txt
diff $file dec.txt
