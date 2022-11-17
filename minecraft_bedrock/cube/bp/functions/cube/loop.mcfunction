# Initialize cube
execute @s[tag=!initialized] ~ ~ ~ function cube/init

# Add tag if the cube is in water
tag @s remove in_water
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:water -1 tag @s add in_water
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:flowing_water -1 tag @s add in_water

# Run in_water loop if the cube is in water, otherwise reset the timer
execute @s[tag=in_water,scores={in_water_time=..600}] ~ ~ ~ function cube/in_water/loop
scoreboard players set @s[tag=!in_water,scores={in_water_time=!0}] in_water_time 0
