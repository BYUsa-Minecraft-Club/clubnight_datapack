# if player tagged but not in team add them to team
execute if entity @e[tag=inGame,tag=red_team,team=!RED] run team join RED @e[tag=inGame,tag=red_team,team=!RED]
execute if entity @e[tag=inGame,tag=blue_team,team=!BLUE] run team join BLUE @e[tag=inGame,tag=blue_team,team=!BLUE]
execute if entity @e[tag=inGame,tag=green_team,team=!GREEN] run team join BLUE @e[tag=inGame,tag=green_team,team=!GREEN]

# if have a helmet but not in team join team
execute if entity @e[tag=inGame,team=,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}] run team join RED @e[tag=inGame,team=,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}]
execute if entity @e[tag=inGame,team=,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}] run team join BLUE @e[tag=inGame,team=,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}]
execute if entity @e[tag=inGame,team=,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "GREEN"}}]}] run team join GREEN @e[tag=inGame,team=,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "GREEN"}}]}]

# add new players in game to team 
execute if entity @e[tag=inGame,team=] run scoreboard players add club_night currentTeam 1
execute if score club_night currentTeam >= club_night numTeams run scoreboard players set club_night currentTeam 0
execute if entity @e[tag=inGame,team=] if score club_night currentTeam matches 0 run team join RED @e[sort=random,tag=inGame,team=,limit=1] 
execute if entity @e[tag=inGame,team=] if score club_night currentTeam matches 1 run team join BLUE @e[sort=random,tag=inGame,team=,limit=1] 
execute if entity @e[tag=inGame,team=] if score club_night currentTeam matches 2 run team join GREEN @e[sort=random,tag=inGame,team=,limit=1] 


# add tag to players in team
execute if entity @e[tag=inGame,tag=!red_team,team=RED] run tag @e[tag=inGame,tag=!red_team,team=RED] add red_team
execute if entity @e[tag=inGame,tag=!blue_team,team=BLUE] run tag @e[tag=inGame,tag=!blue_team,team=BLUE] add blue_team
execute if entity @e[tag=inGame,tag=!green_team,team=GREEN] run tag @e[tag=inGame,tag=!green_team,team=GREEN] add green_team


# remove tag if in a different team
execute if entity @e[tag=inGame,tag=red_team,team=!,team=!RED] run tag @e[tag=inGame,tag=red_team,team=!,team=!RED] remove red_team
execute if entity @e[tag=inGame,tag=blue_team,team=!,team=!BLUE] run tag @e[tag=inGame,tag=blue_team,team=!,team=!BLUE] remove blue_team
execute if entity @e[tag=inGame,tag=green_team,team=!,team=!GREEN] run tag @e[tag=inGame,tag=green_team,team=!,team=!GREEN] remove green_team





# if a player has a helmet but not marked in game mark them 
execute if entity @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] run tag @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] add inGame
execute if entity @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}] run tag @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}] add inGame
execute if entity @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}] run tag @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}] add inGame
execute if entity @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "GREEN"}}]}] run tag @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "GREEN"}}]}] add inGame

# if a player has a helmet but is not in a team add them
execute if entity @e[team=!RED,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}] run team join RED @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}]
execute if entity @e[team=!BLUE,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}] run team join BLUE @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}]
execute if entity @e[team=!GREEN,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "GREEN"}}]}] run team join GREEN @e[tag=!inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "GREEN"}}]}]

#if a player has an unassigned helmet and in a team change helmet to appropriate thing
execute if entity @e[team=BLUE,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] run item modify entity @e[team=BLUE,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] armor.head clubnight:blue_team
execute if entity @e[team=RED,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] run item modify entity @e[team=RED,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] armor.head clubnight:red_team
execute if entity @e[team=GREEN,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] run item modify entity @e[team=GREEN,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "unassigned"}}]}] armor.head clubnight:green_team
