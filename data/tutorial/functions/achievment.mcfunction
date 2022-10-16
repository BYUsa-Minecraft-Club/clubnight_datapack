say "congrats"
execute run summon chest_boat ~ ~ ~
execute run recipe take @s tutorial:test
execute run advancement revoke @s only tutorial:paper_advancement
#execute as @p[advancements={tutorial:paper_advancement}] run advancement revoke @s only tutorial:paper_advancement
