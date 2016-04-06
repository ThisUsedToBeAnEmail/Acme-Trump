#!/usr/bin/perl
package Acme::Trump::Outrageous;
use Moose;

extends 'Acme::Trump::Base';

has '+quotes_list' => (
    default => sub { 
        [
            q{Sometimes your best investments are the ones you don't make.},
            q{I try to learn from the past, but I plan for the future by focusing exclusively on the present. That's were the fun is.},
            q{Sometimes by losing a battle you find a new way to win the war.},
            q{All of the women on The Apprentice flirted with me - consciously or unconsciously. That's to be expected.},
            q{Money was never a big motivation for me, except as a way to keep score. The real excitement is playing the game.},
            q{What separates the winners from the losers is how a person reacts to each new twist of fate.},
            q{Everything in life is luck.},
            q{Part of being a winner is knowing when enough is enough. Sometimes you have to give up the fight and walk away, and move on to something that's more productive.},
            q{You have to think anyway, so why not think big?},
            q{As long as your going to be thinking anyway, think big.},
        ] 
    },
);

1;
