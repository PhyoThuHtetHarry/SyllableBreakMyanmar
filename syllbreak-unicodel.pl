#!usr/bin/perl
# Syllable Segmenter for unicode
# Usage: perl syllbreak-unicode.pl training.data

# Phyo Thu Htet, Information Science Student, UTYCC
# @SoftwareLab, UTYCC
# 4 Oct 2019, Last Modified : 29 Dec 2019
use strict;
use warnings;
use utf8;

binmode(STDIN, ":utf8");
binmode(STDOUT, ":utf8");
binmode(STDERR, ":utf8");

open (my $inputFILE,"<:encoding(utf8)", $ARGV[0]) or die "Couldn't open input file $ARGV[0]!, $!\n";


my $count = 0;
while (!eof($inputFILE)) {
   
    my $line = <$inputFILE>;
    if (($line ne '') & ($line !~ /^ *$/)) {
        chomp($line);
    $line = uc $line;
    # Second Version
    $line =~ s/([က-အ|ဥ|ဦ]([က-အ][့း]*[်]|္[က-အ]|[ါ-ှ]){0,}|.)/$1\n/g;
    print "$line";
   }
   
   
}

close ($inputFILE);


