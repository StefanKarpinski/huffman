Huffman Encoding & Decoding in 27 lines of Perl
===============================================

Oh, yeah, character frequency and Huffman code table generation too.

Example usage:

    file=README.md
    ./frequencies.pl $file > freq.txt
    ./huffman.pl freq.txt > huff.txt
    cat $file | ./encode.pl huff.txt > enc.huf
    cat enc.huf | ./decode.pl huff.txt > dec.txt
    diff $file dec.txt

Thanks to @stefanrueger who kindly pointed out edge cases where the initial code failed and solved them with no additional lines needed.
