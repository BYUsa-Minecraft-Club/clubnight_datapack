# if player tagged but not in team add them to team
execute if entity @e[tag=clubnight,tag=red_team,team=!RED] run team join RED @e[tag=clubnight,tag=red_team,team=!RED]
execute if entity @e[tag=clubnight,tag=blue_team,team=!BLUE] run team join BLUE @e[tag=clubnight,tag=blue_team,team=!BLUE]
execute if entity @e[tag=clubnight,tag=green_team,team=!GREEN] run team join GREEN @e[tag=clubnight,tag=green_team,team=!GREEN]
execute if entity @e[tag=clubnight,tag=yellow_team,team=!YELLOW] run team join YELLOW @e[tag=clubnight,tag=yellow_team,team=!YELLOW]
execute if entity @e[tag=clubnight,tag=purple_team,team=!PURPLE] run team join PURPLE @e[tag=clubnight,tag=purple_team,team=!PURPLE]
execute if entity @e[tag=clubnight,tag=orange_team,team=!ORANGE] run team join ORANGE @e[tag=clubnight,tag=orange_team,team=!ORANGE]



# if have a helmet but not in team join team
execute if entity @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] run team join RED @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}]
execute if entity @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] run team join BLUE @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}]
execute if entity @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] run team join GREEN @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}]
execute if entity @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] run team join YELLOw @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOw"}}]}]
execute if entity @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] run team join PURPLE @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}]
execute if entity @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] run team join ORANGE @e[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}]
# add new players in game to team 
execute if entity @e[tag=clubnight,team=] run scoreboard players add clubnight currentTeam 1
execute if score clubnight currentTeam >= clubnight numTeams run scoreboard players set clubnight currentTeam 0
execute if entity @e[tag=clubnight,team=] if score clubnight currentTeam matches 0 run team join RED @e[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @e[tag=clubnight,team=] if score clubnight currentTeam matches 1 run team join BLUE @e[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @e[tag=clubnight,team=] if score clubnight currentTeam matches 2 run team join GREEN @e[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @e[tag=clubnight,team=] if score clubnight currentTeam matches 3 run team join YELLOW @e[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @e[tag=clubnight,team=] if score clubnight currentTeam matches 4 run team join PURPLE @e[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @e[tag=clubnight,team=] if score clubnight currentTeam matches 5 run team join ORANGE @e[sort=random,tag=clubnight,team=,limit=1] 


# add tag to players in team
execute if entity @e[tag=clubnight,tag=!red_team,team=RED] run tag @e[tag=clubnight,tag=!red_team,team=RED] add red_team
execute if entity @e[tag=clubnight,tag=!blue_team,team=BLUE] run tag @e[tag=clubnight,tag=!blue_team,team=BLUE] add blue_team
execute if entity @e[tag=clubnight,tag=!green_team,team=GREEN] run tag @e[tag=clubnight,tag=!green_team,team=GREEN] add green_team
execute if entity @e[tag=clubnight,tag=!yellow_team,team=YELLOW] run tag @e[tag=clubnight,tag=!yellow_team,team=YELLOW] add yellow_team
execute if entity @e[tag=clubnight,tag=!purple_team,team=PURPLE] run tag @e[tag=clubnight,tag=!purple_team,team=PURPLE] add purple_team
execute if entity @e[tag=clubnight,tag=!orange_team,team=ORANGE] run tag @e[tag=clubnight,tag=!orange_team,team=ORANGE] add orange_team


# remove tag if in a different team
execute if entity @e[tag=clubnight,tag=red_team,team=!,team=!RED] run tag @e[tag=clubnight,tag=red_team,team=!,team=!RED] remove red_team
execute if entity @e[tag=clubnight,tag=blue_team,team=!,team=!BLUE] run tag @e[tag=clubnight,tag=blue_team,team=!,team=!BLUE] remove blue_team
execute if entity @e[tag=clubnight,tag=green_team,team=!,team=!GREEN] run tag @e[tag=clubnight,tag=green_team,team=!,team=!GREEN] remove green_team
execute if entity @e[tag=clubnight,tag=yellow_team,team=!,team=!YELLOW] run tag @e[tag=clubnight,tag=yellow_team,team=!,team=!YELLOW] remove yellow_team
execute if entity @e[tag=clubnight,tag=purple_team,team=!,team=!PURPLE] run tag @e[tag=clubnight,tag=purple_team,team=!,team=!PURPLE] remove purple_team
execute if entity @e[tag=clubnight,tag=orange_team,team=!,team=!ORANGE] run tag @e[tag=clubnight,tag=orange_team,team=!,team=!ORANGE] remove orange_team





# if a player has a helmet but not marked in game mark them 
execute if entity @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run tag @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] add clubnight
execute if entity @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] run tag @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] add clubnight
execute if entity @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] run tag @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] add clubnight
execute if entity @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] run tag @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] add clubnight
execute if entity @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] run tag @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] add clubnight
execute if entity @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] run tag @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] add clubnight
execute if entity @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] run tag @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] add clubnight

# if a player has a helmet but is not in a team add them
execute if entity @e[team=!RED,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] run team join RED @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}]
execute if entity @e[team=!BLUE,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] run team join BLUE @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}]
execute if entity @e[team=!GREEN,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] run team join GREEN @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}]
execute if entity @e[team=!YELLOW,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] run team join YELLOW @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}]
execute if entity @e[team=!PURPLE,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] run team join PURPLE @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}]
execute if entity @e[team=!ORANGE,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] run team join ORANGE @e[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}]

#if a player has an unassigned helmet and in a team change helmet to appropriate thing
execute if entity @e[team=BLUE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @e[team=BLUE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:blue_team
execute if entity @e[team=RED,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @e[team=RED,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:red_team
execute if entity @e[team=GREEN,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @e[team=GREEN,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:green_team
execute if entity @e[team=YELLOW,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @e[team=YELLOW,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:yellow_team
execute if entity @e[team=PURPLE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @e[team=PURPLE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:purple_team
execute if entity @e[team=ORANGE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @e[team=ORANGE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:orange_team
