team empty RED
team empty BLUE
team empty GREEN
tag @e[tag=red_team] remove red_team
tag @e[tag=blue_team] remove blue_team
tag @e[tag=green_team] remove green_team
item modify entity @e[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "RED"}}]}] armor.head clubnight:unassignedteam
item modify entity @e[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "BLUE"}}]}] armor.head clubnight:unassignedteam
item modify entity @e[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "GREEN"}}]}] armor.head clubnight:unassignedteam