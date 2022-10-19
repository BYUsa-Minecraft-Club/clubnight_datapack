# clubnight_datapack
Minecraft datapack to help with clubnight activities

Provides the following features:
Automatic tagging of players at clubnight using cosmo. 
Automatic team creation and randomization. (supports up to 6 teams)
Automatic coloring of helmets for each team.
Head-giver villager which give players their head for each club night attended. 


function: (to use any function run /function clubnight:function_name)
* clearteams: removes current teams/if game is on will simply reroll teams
* countdown: initiates a countdown. Is displayed in chat and as titles to those in clubnight.
* endclubnight: removes all tags/teams and cosmo
* endgame: stops game removes team automation
* startclubnight: starts club night. Players near cosmo are tagged clubnight. Increments clubnight count and grants those in clubnight a head earned. 
* startgame: starts team automation randomly assigns everyone to a team. 
* summoncosmo: summons cosmo the cat. Anyone within 50 blocks of cosmo is tagged clubnight.
* summonheadgiver: summons a headgiver villager. Players that have been awarded a head can interact with villager to be given one.

How to use:
The datapack has 3 states:
Clubnight inactive: 
 * Most datapack features are inactive. 
 * Head-giver will continue to give heads to those who has earned them. 
 * Countdown command will still countdown in chat.
 * Any clubnight tags are removed if present.
 
Clubnight active:
 * Players near cosmo are tagged. (tag is clubnight)
 * Tagged players headsearned is incremented.
 
Clubnight inGame:
 * Players are randomly assigned a team.
 * Helmets are properly colored.
