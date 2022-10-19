execute if score clubnight clubstatus matches 1 run function clubnight:clubtick 
execute if score clubnight clubstatus matches 2 run function clubnight:gametick 


execute if score @p headsearned matches 1.. run advancement revoke @p[scores={headsearned=1..}] only clubnight:clubheads
execute if score clubnight clubstatus matches 0 if entity @p[tag=clubnight] run tag @p[tag=clubnight] remove clubnight

execute if score clubnight countdowncount matches 80 run say 3
execute if score clubnight countdowncount matches 80 run title @p[tag=clubnight] title 3

execute if score clubnight countdowncount matches 60 run say 2
execute if score clubnight countdowncount matches 60 run title @p[tag=clubnight] title 2

execute if score clubnight countdowncount matches 40 run say 1
execute if score clubnight countdowncount matches 40 run title @p[tag=clubnight] title 1

execute if score clubnight countdowncount matches 20 run say Go
execute if score clubnight countdowncount matches 20 run title @p[tag=clubnight] title "Go"

execute if score clubnight countdowncount matches 1 run title @p[tag=clubnight] clear


execute if score clubnight countdowncount matches 1.. run scoreboard players remove clubnight countdowncount 1