#!/usr/bin/env perl
/^\s*(\d+)\s+(\d+)\s*$/ and push @_,[$1,$2] while <>;
while (@_ > 1) {
    @_ = @_[sort { $_[$a]->[1] <=> $_[$b]->[1] or $a <=> $b } 0..$#_];
    my @x = splice @_,0,2;
    push @_, [[map {$_->[0]} @x], $x[0][1]+$x[1][1]];
}
sub x {
    ref $_[0] or return print "$_[0]\t$_[1]\n";
    x($_[0][$_],$_[1].$_) for 0..$#{$_[0]};
}
x $_[0][0];
