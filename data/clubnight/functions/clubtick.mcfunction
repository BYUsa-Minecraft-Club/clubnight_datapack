execute if score clubnight clubstatus matches 1.. at @e[tag=clubnightcosmo] if entity @a[distance=..50, tag=!clubnight] run tag @a[distance=..50, tag=!clubnight] add clubnight
# save players lastclubnight as lastclubnight this makes sure the player has a lastclubnight score (and sets it to 0 if not.)
execute if score clubnight clubstatus matches 1.. as @a[tag=clubnight] store result score @s lastclubnight run scoreboard players get @s lastclubnight

# give player a head and mark them as attended.
execute if score clubnight clubstatus matches 1.. as @a[tag=clubnight] if score @s lastclubnight < clubnight lastclubnight run scoreboard players add @s headsearned 1 
execute if score clubnight clubstatus matches 1.. as @a[tag=clubnight] if score @s lastclubnight < clubnight lastclubnight run scoreboard players operation @s lastclubnight = clubnight lastclubnight

# allow anyone a teleport to cosmo. activated by them running /trigger ClubnightTeleport to increase there score.
# enable trigger for all players
execute if score clubnight clubstatus matches 1.. run scoreboard players enable @a ClubNightTeleport
# teleport them
execute if score clubnight clubstatus matches 1.. if entity @a[scores={ClubNightTeleport=1..}] run tp @a[scores={ClubNightTeleport=1..}] @e[tag=clubnightcosmo,limit=1,sort=nearest]
# Set score back to zeroob
execute if score clubnight clubstatus matches 1.. if entity @a[scores={ClubNightTeleport=1..}] run scoreboard players set @a[scores={ClubNightTeleport=1..}] ClubNightTeleport 0