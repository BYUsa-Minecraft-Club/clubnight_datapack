scoreboard players set clubnight clubstatus 0
function clubnight:clearteams
tag @a[tag=clubnight] remove clubnight
tp @e[tag=clubnightcosmo] ~ -400 ~
kill @e[tag=clubnightcosmo]
scoreboard objectives remove ClubNightTeleport