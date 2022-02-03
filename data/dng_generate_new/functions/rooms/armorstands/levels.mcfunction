# levels are on the Y axis

## remove 1 to counter (first level already generated)
execute if score $ylevels_size_opperate dng_generate = $levels dng_generate run scoreboard players remove $ylevels_size_opperate dng_generate 1


execute if score $ylevels_size_opperate dng_generate matches 1.. as @e[type=armor_stand,tag=dng_newLevel] run tag @s add dng_level
execute if score $ylevels_size_opperate dng_generate matches 1.. as @e[type=armor_stand,tag=dng_newLevel,tag=dng_level] at @s positioned ~ ~35 ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["dng_as","dng_gen_as","dng_newLevel"],Team:"dng_dark_blue",Glowing:1b}
execute if score $ylevels_size_opperate dng_generate matches 1.. as @e[type=armor_stand,tag=dng_newLevel,tag=dng_level] run tag @s remove dng_newLevel
execute if score $ylevels_size_opperate dng_generate matches 1.. run scoreboard players remove $ylevels_size_opperate dng_generate 1 

execute unless score $ylevels_size_opperate dng_generate matches 0 run schedule function dng_generate_new:rooms/armorstands/levels 20t
execute if score $ylevels_size_opperate dng_generate matches 0 run say generated successfuly !