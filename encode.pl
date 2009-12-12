#!/usr/bin/env perl
/^\s*(\d+)\s+([01]+)\s*$/ and $_{chr$1}=$2 while <ARGV>;
$/=\1;
while (<STDIN>) {
    $x .= $_{$_};
    print pack 'b*',$1 if $x =~ s/^((?:.{8})+)//;
}
print pack 'b*',$x;
