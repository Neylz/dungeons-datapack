# lines are on the X axis
# only slide on one line the dng_gen_as_main armor_stand


execute if score $xlines_size_opperate dng_generate matches 1 run scoreboard players operation $zcolumns_size_opperate dng_generate = $size dng_generate
execute if score $xlines_size_opperate dng_generate matches 1.. as @e[type=armor_stand,tag=dng_gen_as_main] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["dng_as","dng_gen_as","dng_newLine","dng_newLevel"],Team:"dng_dark_green",Glowing:1b}
execute if score $xlines_size_opperate dng_generate matches 2.. as @e[type=armor_stand,tag=dng_gen_as_main] at @s run tp @s ~35 ~ ~
execute if score $xlines_size_opperate dng_generate matches 1 as @e[type=armor_stand,tag=dng_gen_as_main] run kill @s
execute if score $xlines_size_opperate dng_generate matches 1.. run scoreboard players remove $xlines_size_opperate dng_generate 1

execute unless score $xlines_size_opperate dng_generate matches 0 run schedule function dng_generate_new:rooms/armorstands/lines 1t
execute if score $xlines_size_opperate dng_generate matches 0 run schedule function dng_generate_new:rooms/armorstands/columns 1t