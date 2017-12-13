#!/usr/bin/perl

$FILE = "test_bitmaps_usbdata_sent.txt";
$OUTFILE = "test_bitmaps_usbdata_sent.bin";

open(INFILE,"$FILE") or die "unable to open $FILE on localhost: $!\n";
open(OUTPUT,">$OUTFILE") || die "$!\n";

while ( my $line = <INFILE> ) {
   chomp $line;
   my $number = oct( "0x".$line);
#   printf ("%u\n"), $number ;
   print OUTPUT pack('N', $number );

}
