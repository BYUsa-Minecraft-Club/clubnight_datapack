execute at @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"}, Motion:[0.0, 0.0, 0.0] }] if block ~ ~-1 ~ grass_block run tag @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"}}] add grow
execute at @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"}},tag=grow] run place feature oak
execute at @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"}},tag=grow] run kill @e[type=item,nbt={Item:{id:"minecraft:oak_sapling"}}, tag=grow]
#execute at @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{Damage:1}}}] run summon trader_llama ~ ~ ~
#execute at @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{Damage:1}}}] run data modify entity ResoluteArcher SelectedItem.tag.Damage set value 0
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Special:0,ChargedProjectiles:[{id:"minecraft:tipped_arrow",tag:{Potion: "minecraft:leaping"}}]}}}] run item modify entity @s weapon tutorial:add_tag
execute at @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b,Special:1}}}] run summon trader_llama ~ ~ ~
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b,Special:1}}}] run item modify entity @s weapon tutorial:remove_tag
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Special:0,ChargedProjectiles:[{id:"minecraft:tipped_arrow",tag:{Potion: "minecraft:strength"}}]}}}] run item modify entity @s weapon tutorial:add_tag2
execute at @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b,Special:2}}}] run place feature oak ~ ~ ~
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:0b,Special:2}}}] run item modify entity @s weapon tutorial:remove_tag
#execute at @e[type=arrow,tag=,] run tag @e[type= arrow,tag=] add test
execute at @e[type=arrow,tag=test,nbt={inGround:0b}] run summon small_fireball
execute at @e[type=arrow,tag=test] run data modify entity @e[type=small_fireball,limit=1] power set from entity @e[type=arrow,tag=test,limit=1] Motion
execute at @e[type=arrow,tag=test] run kill @e[type=arrow,tag=test] 
execute at @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:1b, Function:"pig"}}}] run summon pig ~ ~1 ~
execute at @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Charged:1b, Function:"pig"}}}] run item modify entity @p[limit=1] weapon.mainhand tutorial:unloadxbow


#execute as @a[nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "RED"}}]}] run team join RED @s
#execute as @a[nbt={Inventory:[{Slot: 103b, id:"minecraft:leather_helmet", Count:1b, tag: {team: "BLUE"}}]}] run team join BLUE @s

execute if score club_night inGame matches 1..5 run function tutorial:gametick 