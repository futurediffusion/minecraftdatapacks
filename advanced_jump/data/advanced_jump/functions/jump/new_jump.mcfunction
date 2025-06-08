# Called when player performs a new jump
# Increment jump count and apply effects
scoreboard players add @s jumpCount 1

# Dash if third jump happens quickly
execute if score @s jumpCount matches 3 if score @s lastJumpTime matches ..7 run function advanced_jump:jump/dash

# Apply jump boosts for first and second jump
execute if score @s jumpCount matches 1 run effect give @s minecraft:jump_boost 20 1 true
execute if score @s jumpCount matches 2 run function advanced_jump:jump/double_jump

# Reset timer since jump
scoreboard players set @s lastJumpTime 0

# Cap jump count at 3 unless dash triggered
execute unless score @s jumpCount matches 0..3 run scoreboard players set @s jumpCount 3
