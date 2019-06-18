# dr-tin
TinTin++ repository dedicated to DragonRealms. The idea comes from the ability to MUD from my Android Phone, and that is where my focus will be. However, there is not reason what we come up with should not be able to be used on TinTin++ for other platforms. Perhaps separate forks can be created? Note: first thing you will have to change is the location of your perl binary.

Scripts should be simplified as much as possible, with very clear step-by-step instructions for those who are not technically oriented. The scripts should not be complex and brilliant one liners, but expanded basically so new users can understand what is going on.

The files are not well organized yet, but can be organized as I learn what the heck I am doing myself. This is my frist go with tintin++.

# Installation
First we will need to install prerequisites. Detailed instructions will follow.
- Termux
- Perl (for connection script)
- TinTin++
- git (for these scripts)

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

## git
This will install git so you can easily download these scripts
> pkg install git

And finally this will get you these scripts
> git clone https://github.com/dylb0t/dr-tin.git

These scripts do not exist yet, so I will have to update this readme when I have some content!

# Running dr-tin Sript
You will need to modify a file with your Simutronics user name, password and the character name in question.

# TODO
- COMPLETE roundtime countdown
  - Global roundtime countdown
  - Could be modified in the future to utilize return value on function instead of global variable. May be safer.
- better navigation
- spell system
  - Underway. Have the Summon Admitance and Impediance systems built, and they work incredibly well.
- Combat system
- Skinning
- maps
- obvious paths and Roundtime above prompt
  - Added roundtime just above prompt
  - Need further work for obvious paths etc. (Can I make these clickable?)
- Zombie scripts
  - For experience gaining or "grinding".
- Personality scripts
  - Sleeping 
  - Responding to inquiry
- Highlights
  - Combat wounds/stuns/balance/strikes
  - People directing speech/actions towards you
  
