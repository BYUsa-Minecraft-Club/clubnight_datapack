execute at @e[tag=clubnightcosmo] if entity @p[distance=..50, tag=!clubnight] run tag @p[distance=..50, tag=!clubnight] add clubnight
# save players lastclubnight as lastclubnight this makes sure the player has a lastclubnight score (and sets it to 0 if not.)
execute as @p[tag=clubnight] store result score @s lastclubnight run scoreboard players get @s lastclubnight

# give player a head and mark them as attended.
execute as @p[tag=clubnight] if score @s lastclubnight < clubnight lastclubnight run scoreboard players add @s headsearned 1 
execute as @p[tag=clubnight] if score @s lastclubnight < clubnight lastclubnight run scoreboard players operation @s lastclubnight = clubnight lastclubnight
