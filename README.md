# clubnight_datapack
Minecraft datapack to help with clubnight activities

Provides the following features:
Automatic tagging of players at clubnight using cosmo. 
Automatic team creation and randomization. (supports up to 6 teams)
Automatic coloring of helmets for each team.
Head-giver villager which give players their head for each club night attended. 

## Basic Use
The following are the basic guide on how to use the features. 

### Clubnight
The clubnight features include tagging players in attendance and allowing players to claim heads from headgiver. 

#### Cosmo
Cosmo is central to the clubnight features. Cosmo is summoned using the function summoncosmo. Make sure to sit him when summoned if you do not want him to wander. Any player within 50 blocks of a Cosmo (there can be more than one) after the startclubnight function is run will be tagged. This tag is essential for all other features to work. When tagged a player clubnight attendance is recorded and if this is the first time they have been tagged this clubnight they are granted one head. Cosmo is removed when endclubnight is run.

#### Tag
Any player near a cosmo recieves the tag `clubnight`. If needed a player can be manually tagged and all features will work but the primary method should be by proximity to cosmo. The `clubnight` tag is automatically removed from all players when clubnight is not active (after the function endclubnight is called). It is not possible for a player to have the `clubnight` tag without clubnight being started as the datapack will remove it. 


The tag can be used to grant effects or teleport all players at clubnight using `@p[tag=clubnight]`. For instance `tp @p[tag=clubnight] ~ ~ ~` will teleport all players at clubnight to the player running the command.

#### Headgiver
The headgiver is a villager that will grant heads to players that have earned them. A player is granted the ability to claim a head from the headgiver when they are tagged for the first time on a clubnight. 

The headgiver is summoned using summonheadgiver. The headgiver can be permanently summoned allowing players to claim their earned heads at their leisure. 

To manually grant a player the ability to claim a head (perhaps as an additional reward). Use the command `\scoreboard players add PLAYER_NAME headsearned 1`. 


### Game
These features involve the handling of teams.

#### Number of teams
To control the number of teams use the command `\scoreboard players set clubnight numTeams 2` where 2 is the number of teams. The datapack supports up to 6 teams.  

#### Team assignment
When the function `startgame` is run the 6 possible teams are created, every player in club night will be randomly assigned a team (number of teams are controlled as described above). The teams can be reassigned using `clearteams`. The teams will fully be removed when the command `endgame` is run. Teams are RED, BULE, GREEN, YELLOW, PURPLE, ORANGE. If a command needs to be run targeting players of a specific team use `@p[team=RED]`, etc.

#### Team tags
When a player is assigned a team they are also tagged with a tag red_team, blue_team, etc. This tag makes sure that the teams are not messed up by any server errors that may accidenly clear the teams. 

#### Helmets
The datapack will properly color players helmets. These helmets must be specially tagged for the datapack. To get an unassigned leather helmet use the command `/give @s minecraft:leather_helmet{team:unassigned, display:{color:5066061,Name:'[{"text":"Unassigned Team","italic":false}]'}} 1`. Replacing `@s` with a player name or target and 1 with a desired count. The commands to summon a specific team's helmet are the following:

 * `/give @s minecraft:leather_helmet{team:RED, display:{color:11546150,Name:'[{"text":"Red Team","italic":false}]'}} 1`
* `/give @s minecraft:leather_helmet{team:BLUE, display:{color:661188,Name:'[{"text":"Blue Team","italic":false}]'}} 1`
* `/give @s minecraft:leather_helmet{team:GREEN, display:{color:2979099,Name:'[{"text":"Green Team","italic":false}]'}} 1`
* `/give @s minecraft:leather_helmet{team:YELLOW, display:{color:15856914,Name:'[{"text":"Yellow Team","italic":false}]'}} 1`
* `/give @s minecraft:leather_helmet{team:PURPLE, display:{color:10355942,Name:'[{"text":"Purple Team","italic":false}]'}} 1`
* `/give @s minecraft:leather_helmet{team:ORANGE, display:{color:13919240,Name:'[{"text":"Orange Team","italic":false}]'}} 1`

#### Manually Assign Teams 
If a player has a helmet of a specific team when the startgame function is run they will automatically be placed in the team corresponding to their helmet. However this may result in an inbalance of team members as the datapack will distribute the teams without taking into account to those manually assigned.

#### Excluding a player from teams
If it is desired for a player to be excluded from team selection simply create and place them in a team other than those handled by the datapack. The player will be ignored in team selection. 


### Standard Flow
The following is an example of the command flow for a clubnight.
1) Setup Clubnight
2) Summon helmets if needed (`/give @s minecraft:leather_helmet{team:unassigned, display:{color:5066061,Name:'[{"text":"Unassigned Team","italic":false}]'}} 1`)
3) Summon cosmo (`/function clubnight:summoncosmo`)
4) Start clubnight (`/function clubnight:startclubnight`)
5) setup numberofteams (`\scoreboard players set clubnight numTeams 2`)
5) Start game to assign teams (`/function clubnight:startgame`)
6) Use countdown and clearteams as desired
7) End the game (`/function clubnight:endgame`)
8) End clubnight (`/function clubnight:endclubnight`)

## Functions: 
(to use any function run /function clubnight:function_name)
* clearteams: removes current teams/if game is on will simply reroll teams
* countdown: initiates a countdown. Is displayed in chat and as titles to those in clubnight.
* endclubnight: removes all tags/teams and cosmo
* endgame: stops game removes team automation
* startclubnight: starts club night. Players near cosmo are tagged clubnight. Increments clubnight count and grants those in clubnight a head earned. 
* startgame: starts team automation randomly assigns everyone to a team. 
* summoncosmo: summons cosmo the cat. Anyone within 50 blocks of cosmo is tagged clubnight.
* summonheadgiver: summons a headgiver villager. Players that have been awarded a head can interact with villager to be given one.

## States
The datapack has 3 states:
(state is stored in scoreboard objective clubstatus under player clubnight)

Clubnight inactive:  (value 0) (entered on endclubnight)
 * Most datapack features are inactive. 
 * Head-giver will continue to give heads to those who has earned them. 
 * Countdown command will still countdown in chat.
 * Any clubnight tags are removed if present.
 
Clubnight active: (value 1) (entered on startclubnight)
 * Players near cosmo are tagged. (tag is clubnight)
 * Tagged players headsearned is incremented.
 
Clubnight inGame: (value 2) (entered on startgame)
 * Players are randomly assigned a team.
 * Helmets are properly colored.


 ## Technical Information:
 Here are some specific details about how things work that are not necessary to know to use the datapack but can be used to more specifically customize it.

 ### Cosmo
 Cosmo is simply a cat with persistant and indestructible tagged clubnightcosmo. Any entity with the tag will have the same effects (tagging those near it). Note that any entity tagged cosmo will be teleported into the void and killed when the endclubnight function is run.

 ### Headgiver
 The only requirements for a headgiver to function is that it be a villager which possesses an armor item with the tag `Special:"HeadGiver"`. The default headgiver is summoned as a nitwit and named.

### Helmets
The only necessary element for a helmet to work properly according to the datapack is that it has the tag `team:RED` where RED is either a team name or unassigned.

### Objectives
The datapack adds a few scoreboard objectives.
* lastclubnight: contains the index of the index of the last clubnight the player attendeded. When a player is tagged as being at clubnight, this score is compared against that of the fake player clubnight(incremented each time startclubnight is called). If the score is different, the score will be updated to match and that player's headsearned will be incremented. 
* headsearned: Contains the number of heads a player has earned and has yet to claim.