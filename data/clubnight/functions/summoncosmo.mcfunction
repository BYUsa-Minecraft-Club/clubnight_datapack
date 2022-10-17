summon cat ~ ~ ~ {PersistenceRequired:1b,CollarColor:11, CustomName:'{"text":"Cosmo"}', Invulnerable:1b, Tags:["clubnightcosmo"], variant:"tabby"}
data modify entity @e[type=cat,tag=clubnightcosmo,limit=1] Owner set from entity @s UUID
#data merge entity @e[type=cat,tag=clubnightcosmo,limit=1] {Sitting:1b}