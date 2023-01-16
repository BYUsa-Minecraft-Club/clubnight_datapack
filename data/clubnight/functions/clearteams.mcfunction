# empty teams
team empty RED
team empty BLUE
team empty GREEN
team empty YELLOW
team empty PURPLE
team empty ORANGE
# remove team tags
tag @a[tag=red_team] remove red_team
tag @a[tag=blue_team] remove blue_team
tag @a[tag=green_team] remove green_team
tag @a[tag=yellow_team] remove yellow_team
tag @a[tag=purple_team] remove purple_team
tag @a[tag=orange_team] remove orange_team
# remove helmet markings
item modify entity @a[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "RED"}}]}] armor.head clubnight:unassignedteam
item modify entity @a[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "BLUE"}}]}] armor.head clubnight:unassignedteam
item modify entity @a[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "GREEN"}}]}] armor.head clubnight:unassignedteam
item modify entity @a[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "YELLOW"}}]}] armor.head clubnight:unassignedteam
item modify entity @a[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "PURPLE"}}]}] armor.head clubnight:unassignedteam
item modify entity @a[tag=clubnight,nbt={Inventory:[{Slot: 103b, tag: {team: "ORANGE"}}]}] armor.head clubnight:unassignedteam