#!/bin/sh -v
words=/usr/share/dict/words
./frequencies.pl $words > freq.txt
./huffman.pl freq.txt > huff.txt
cat /usr/share/dict/words | ./encode.pl huff.txt > enc.bin
cat enc.bin | ./decode.pl huff.txt > dec.txt
diff $words dec.txt
