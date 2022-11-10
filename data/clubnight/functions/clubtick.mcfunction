execute at @e[tag=clubnightcosmo] if entity @p[distance=..50, tag=!clubnight] run tag @p[distance=..50, tag=!clubnight] add clubnight
# save players lastclubnight as lastclubnight this makes sure the player has a lastclubnight score (and sets it to 0 if not.)
execute as @p[tag=clubnight] store result score @s lastclubnight run scoreboard players get @s lastclubnight

# give player a head and mark them as attended.
execute as @p[tag=clubnight] if score @s lastclubnight < clubnight lastclubnight run scoreboard players add @s headsearned 1 
execute as @p[tag=clubnight] if score @s lastclubnight < clubnight lastclubnight run scoreboard players operation @s lastclubnight = clubnight lastclubnight

# allow anyone a teleport to cosmo. activated by them running /trigger ClubnightTeleport to increase there score.
# enable trigger for all players
scoreboard players enable @p ClubNightTeleport
# teleport them
execute if score @p ClubNightTeleport matches 1.. run tp @p[scores={ClubNightTeleport=1..}] @e[tag=clubnightcosmo,limit=1,sort=nearest]
# Set score back to zero
execute if score @p ClubNightTeleport matches 1.. run scoreboard players set @p[scores={ClubNightTeleport=1..}] ClubNightTeleport 0