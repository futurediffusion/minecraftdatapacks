# Called when player performs a new jump
# Increment jump count and apply effects
# Boost the very first jump to be much higher
execute if score @s jumpCount matches 0 run scoreboard players set @s jumpCount 1
execute if score @s jumpCount matches 1 run tp @s ~ ~8.0 ~

# Reset timer since jump
scoreboard players set @s lastJumpTime 0

# Cap jump count at 3 unless dash triggered
execute unless score @s jumpCount matches 0..3 run scoreboard players set @s jumpCount 3
