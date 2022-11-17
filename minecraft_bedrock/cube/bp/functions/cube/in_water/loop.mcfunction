# Increment time
scoreboard players add @s in_water_time 1

# Mod time by 100 to check if 5 seconds have passed
scoreboard players operation @s water_time_mod = @s in_water_time
scoreboard players operation @s water_time_mod %= "100" const

execute @s[scores={water_time_mod=0}] ~ ~ ~ function cube/in_water/choose_effects
