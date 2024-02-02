#execute if score clubnight clubstatus matches 1.. run function clubnight:clubtick 
execute if score clubnight clubstatus matches 2.. run function clubnight:gametick 


execute if entity @a[scores={headsearned=1..}] run advancement revoke @a[scores={headsearned=1..}] only clubnight:clubheads
execute if score clubnight clubstatus matches 0 if entity @a[tag=clubnight] run tag @a[tag=clubnight] remove clubnight

execute if score clubnight countdowncount matches 80 run say 3
execute if score clubnight countdowncount matches 80 run title @a[tag=clubnight] title "3"

execute if score clubnight countdowncount matches 60 run say 2
execute if score clubnight countdowncount matches 60 run title @a[tag=clubnight] title "2"

execute if score clubnight countdowncount matches 40 run say 1
execute if score clubnight countdowncount matches 40 run title @a[tag=clubnight] title "1"

execute if score clubnight countdowncount matches 20 run say Go
execute if score clubnight countdowncount matches 20 run title @a[tag=clubnight] title "Go"

execute if score clubnight countdowncount matches 1 run title @a[tag=clubnight] clear


execute if score clubnight countdowncount matches 1.. run scoreboard players remove clubnight countdowncount 1