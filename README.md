# dr-tin
TinTin++ repository dedicated to DragonRealms. The idea comes from the ability to MUD from my Android Phone, and that is where my focus will be. However, there is not reason what we come up with should not be able to be used on TinTin++ for other platforms. Perhaps separate forks can be created?

Scripts should be simplified as much as possible, with very clear step-by-step instructions for those who are not technically oriented.

This project should ultimately expand

# Installation
First we will need to install prerequisites. Detailed instructions will follow.
- Termux
- Perl (for connection script)
- TinTin++
- These scripts

## Termux
This can be found in the Google Play store. Not sure about iOS.

## Perl
Once Termux is installed and launched, type the following to install perl:
> pkg install perl

Type "Y" or press enter when prompted.
We will need to install Net::Telnet for our script to work as well, so we have to get CPAN configured. This is basically a library installer for perl. Just type
> pkg install make
>
> pkg install clang

Again, type Y when prompted.
Finally, we need to do the CPAN installation for Net::Telnet
> cpan Net::Telnet

Don't be afraid of all the questions. You will probably be told you do not have write access to the perl libraries. Just go with the default, which is to "bootstrap the perl installation".
After all of this completes, you may need to "cpan Net::Telnet" again just to make sure it is installed properly.

## TinTin++
This is probably the easiest. 
> pkg install tintin++

## These scripts
These scripts do not exist yet, so I will have to update this readme when I have some content!



