#!/usr/bin/perl -w

use strict;
use Net::Telnet;

my ($account, $password, $character, $remote, $port, $iaddr, $paddr,
    $proto, $newpass, $line, $t, @password, @key, $i, @newpass, $key,
    %chars, @lines, $found, $char);

$account = $ARGV[0];
$password = $ARGV[1];
$character = $ARGV[2];

die "You must specify an account to log on to!" unless defined($account);
die "You must specify a password for the account!" unless defined($password);
die "You must specify a character!" unless defined($character);

$remote = "access.simutronics.com";
$port = 7900;

$t = new Net::Telnet(Timeout => 10,
		     Host => $remote,
		     Port => $port);

$t->print("K");
$line = $t->getline;
chomp $line;

@password = split //, $password;
@key = split //, $line;
$newpass = "";

for ($i = 0; $i < length($password); $i++) {
  $newpass[$i] = chr(ord($key[$i]) ^ ord($password[$i]));
  $newpass[$i] = chr(ord($newpass[$i]) ^ 0x40) if ord($key[$i]) >= ord('a');
  $newpass[$i] = chr(ord($newpass[$i]) | 0x80) if ord($newpass[$i]) < ord(' ');
}

$newpass = join '', @newpass;

$t->print("A\t$account\t$newpass");
$line = $t->getline;
chomp $line;

#print($line);

($key) = $line =~ /KEY\t([a-fA-F0-9]+)\t/;
die "Um, no key?  I give up." unless defined($key);

$t->print("G\tDR");
$line = $t->getline;
chomp $line;

$t->print("C");
$line = $t->getline;
chomp $line;

@lines = split /\t/, $line;
for (1, 2, 3, 4, 5) {
  shift @lines;
}

for ($i = 0; $i < $#lines; $i += 2) {
  $chars{$lines[$i]} = $lines[$i + 1];
}

$found = 0;
$char = "";

for (keys %chars) {
  if ($chars{$_} =~ /$character/i) {
    $found = 1;
    $char = $_;
  }
}

die "Unable to find a match for $character, sorry." unless $found;

$t->print("L\t$char\tPLAY");
$line = $t->getline;
chomp $line;

print "$key\n";

$t->close;

