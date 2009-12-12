#!/usr/bin/env perl
$/=\1; $_{$_}++ while <>;
print "@{[ord]}\t$_{$_}\n" for sort keys %_;
