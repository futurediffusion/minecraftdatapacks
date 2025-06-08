# Advanced jump logic - executed every tick

# Update last jump time
execute as @a run scoreboard players add @s lastJumpTime 1

# Track if player is airborne
execute as @a if entity @s[nbt={OnGround:0b}] run scoreboard players add @s inAir 1
execute as @a if entity @s[nbt={OnGround:1b}] run scoreboard players set @s inAir 0

# Reset jump count when touching the ground
execute as @a if entity @s[nbt={OnGround:1b}] run scoreboard players set @s jumpCount 0

# Detect new jump using jumpStat scoreboard
execute as @a if score @s jumpStat > @s jumpStatPrev run function advanced_jump:jump/new_jump

# Update previous jump stat value
execute as @a run scoreboard players operation @s jumpStatPrev = @s jumpStat
