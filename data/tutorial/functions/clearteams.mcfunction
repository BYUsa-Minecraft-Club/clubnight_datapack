team empty RED
team empty BLUE 
tag @e[tag=red_team] remove red_team
tag @e[tag=blue_team] remove blue_team
item modify entity @e[tag=inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}] armor.head tutorial:unassignedteam
item modify entity @e[tag=inGame,nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}] armor.head tutorial:unassignedteam