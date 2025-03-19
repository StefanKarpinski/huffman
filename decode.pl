#!/usr/bin/env perl
/^\s*(\d+)\s+([01]+)\s*$/ and $_{$2}=$1 while <ARGV>;
$/=\1;$"='|';
while (<STDIN>) {
    $x .= unpack 'b*',$_;
    $_{$1} < 0? exit: print chr $_{$1} while $x =~ s/^(@{[keys%_]})//o;
}
