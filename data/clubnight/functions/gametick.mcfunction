# if player tagged but not in team add them to team
execute if entity @a[tag=clubnight,tag=red_team,team=!RED] run team join RED @a[tag=clubnight,tag=red_team,team=!RED]
execute if entity @a[tag=clubnight,tag=blue_team,team=!BLUE] run team join BLUE @a[tag=clubnight,tag=blue_team,team=!BLUE]
execute if entity @a[tag=clubnight,tag=green_team,team=!GREEN] run team join GREEN @a[tag=clubnight,tag=green_team,team=!GREEN]
execute if entity @a[tag=clubnight,tag=yellow_team,team=!YELLOW] run team join YELLOW @a[tag=clubnight,tag=yellow_team,team=!YELLOW]
execute if entity @a[tag=clubnight,tag=purple_team,team=!PURPLE] run team join PURPLE @a[tag=clubnight,tag=purple_team,team=!PURPLE]
execute if entity @a[tag=clubnight,tag=orange_team,team=!ORANGE] run team join ORANGE @a[tag=clubnight,tag=orange_team,team=!ORANGE]



# if have a helmet but not in team join team
execute if entity @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] run team join RED @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}]
execute if entity @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] run team join BLUE @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}]
execute if entity @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] run team join GREEN @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}]
execute if entity @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] run team join YELLOW @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOw"}}]}]
execute if entity @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] run team join PURPLE @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}]
execute if entity @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] run team join ORANGE @a[tag=clubnight,team=,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}]
# add new players in game to team 
scoreboard players set clubnight clubteamsuccess 0
execute if entity @a[tag=clubnight,team=] if score clubnight currentTeam matches 0 store success score clubnight clubteamsuccess run team join RED @a[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @a[tag=clubnight,team=] if score clubnight currentTeam matches 1 store success score clubnight clubteamsuccess run team join BLUE @a[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @a[tag=clubnight,team=] if score clubnight currentTeam matches 2 store success score clubnight clubteamsuccess run team join GREEN @a[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @a[tag=clubnight,team=] if score clubnight currentTeam matches 3 store success score clubnight clubteamsuccess run team join YELLOW @a[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @a[tag=clubnight,team=] if score clubnight currentTeam matches 4 store success score clubnight clubteamsuccess run team join PURPLE @a[sort=random,tag=clubnight,team=,limit=1] 
execute if entity @a[tag=clubnight,team=] if score clubnight currentTeam matches 5 store success score clubnight clubteamsuccess run team join ORANGE @a[sort=random,tag=clubnight,team=,limit=1] 

execute if score clubnight clubteamsuccess matches 1 run scoreboard players add clubnight currentTeam 1
execute if score clubnight currentTeam >= clubnight numTeams run scoreboard players set clubnight currentTeam 0


# add tag to players in team
execute if entity @a[tag=clubnight,tag=!red_team,team=RED] run tag @a[tag=clubnight,tag=!red_team,team=RED] add red_team
execute if entity @a[tag=clubnight,tag=!blue_team,team=BLUE] run tag @a[tag=clubnight,tag=!blue_team,team=BLUE] add blue_team
execute if entity @a[tag=clubnight,tag=!green_team,team=GREEN] run tag @a[tag=clubnight,tag=!green_team,team=GREEN] add green_team
execute if entity @a[tag=clubnight,tag=!yellow_team,team=YELLOW] run tag @a[tag=clubnight,tag=!yellow_team,team=YELLOW] add yellow_team
execute if entity @a[tag=clubnight,tag=!purple_team,team=PURPLE] run tag @a[tag=clubnight,tag=!purple_team,team=PURPLE] add purple_team
execute if entity @a[tag=clubnight,tag=!orange_team,team=ORANGE] run tag @a[tag=clubnight,tag=!orange_team,team=ORANGE] add orange_team


# remove tag if in a different team
execute if entity @a[tag=clubnight,tag=red_team,team=!,team=!RED] run tag @a[tag=clubnight,tag=red_team,team=!,team=!RED] remove red_team
execute if entity @a[tag=clubnight,tag=blue_team,team=!,team=!BLUE] run tag @a[tag=clubnight,tag=blue_team,team=!,team=!BLUE] remove blue_team
execute if entity @a[tag=clubnight,tag=green_team,team=!,team=!GREEN] run tag @a[tag=clubnight,tag=green_team,team=!,team=!GREEN] remove green_team
execute if entity @a[tag=clubnight,tag=yellow_team,team=!,team=!YELLOW] run tag @a[tag=clubnight,tag=yellow_team,team=!,team=!YELLOW] remove yellow_team
execute if entity @a[tag=clubnight,tag=purple_team,team=!,team=!PURPLE] run tag @a[tag=clubnight,tag=purple_team,team=!,team=!PURPLE] remove purple_team
execute if entity @a[tag=clubnight,tag=orange_team,team=!,team=!ORANGE] run tag @a[tag=clubnight,tag=orange_team,team=!,team=!ORANGE] remove orange_team





# if a player has a helmet but not marked in game mark them 
execute if entity @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run tag @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] add clubnight
execute if entity @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] run tag @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] add clubnight
execute if entity @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] run tag @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] add clubnight
execute if entity @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] run tag @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] add clubnight
execute if entity @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] run tag @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] add clubnight
execute if entity @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] run tag @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] add clubnight
execute if entity @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] run tag @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] add clubnight

# if a player has a helmet but is not in a team add them does not work
execute if entity @a[team=!RED,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}] run team join RED @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "RED"}}]}]
execute if entity @a[team=!BLUE,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}] run team join BLUE @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "BLUE"}}]}]
execute if entity @a[team=!GREEN,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}] run team join GREEN @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "GREEN"}}]}]
execute if entity @a[team=!YELLOW,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}] run team join YELLOW @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "YELLOW"}}]}]
execute if entity @a[team=!PURPLE,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}] run team join PURPLE @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "PURPLE"}}]}]
execute if entity @a[team=!ORANGE,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}] run team join ORANGE @a[tag=!clubnight,nbt={Inventory:[{Slot: 103b,tag: {team: "ORANGE"}}]}]

#if a player has an unassigned helmet and in a team change helmet to appropriate thing works
execute if entity @a[team=BLUE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @a[team=BLUE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:blue_team
execute if entity @a[team=RED,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @a[team=RED,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:red_team
execute if entity @a[team=GREEN,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @a[team=GREEN,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:green_team
execute if entity @a[team=YELLOW,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @a[team=YELLOW,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:yellow_team
execute if entity @a[team=PURPLE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @a[team=PURPLE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:purple_team
execute if entity @a[team=ORANGE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] run item modify entity @a[team=ORANGE,nbt={Inventory:[{Slot: 103b,tag: {team: "unassigned"}}]}] armor.head clubnight:orange_team
