#!/usr/bin/env perl
/^\s*(\d+)\s+(\d+)\s*$/ and push @_,[$1,$2] while <>;
while (@_ > 1) {
    @_ = sort {$a->[1]<=>$b->[1]} @_;
    my @x = splice @_,0,2;
    push @_, [[map {$_->[0]} @x]];
    $_[-1][1]+=$_->[1] for @x;
}
sub x {
    ref $_[0] or return print "$_[0]\t$_[1]\n";
    x($_[0][$_],$_[1].$_) for 0..$#{$_[0]};
}
x $_[0][0];
