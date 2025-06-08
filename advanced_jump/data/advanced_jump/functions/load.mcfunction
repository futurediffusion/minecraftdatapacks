# Load function for Advanced Jump Pack
# Announce pack load
tellraw @a {"text":"[Advanced Jump Pack] Datapack loaded","color":"green"}
# Initialize scoreboards
scoreboard objectives add jumpCount dummy
scoreboard objectives add inAir dummy
scoreboard objectives add lastJumpTime dummy
scoreboard objectives add jumpStat minecraft.custom:minecraft.jump
scoreboard objectives add jumpStatPrev dummy

# Set all scores to 0 for every player on load
execute as @a run scoreboard players set @s jumpCount 0
execute as @a run scoreboard players set @s inAir 0
execute as @a run scoreboard players set @s lastJumpTime 0
execute as @a run scoreboard players set @s jumpStat 0
execute as @a run scoreboard players set @s jumpStatPrev 0
