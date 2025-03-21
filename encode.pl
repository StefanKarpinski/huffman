#!/usr/bin/env perl
/^\s*(\S+)\s+([01]+)\s*$/ and $_{$1}=$2 while <ARGV>;
$/=\1;
while (<STDIN>) {
    $x .= $_{ord$_}.(eof STDIN? $_{-1}: '');
    print pack 'b*',$1 if $x =~ s/^((?:.{8})+)//;
}
print pack 'b*',$x;
