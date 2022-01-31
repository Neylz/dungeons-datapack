# colums are on the Z axis

## remove 1 to counter (first line already generated)
execute if score $zcolumns_size_opperate dng_generate = $size dng_generate run scoreboard players remove $zcolumns_size_opperate dng_generate 1


execute if score $zcolumns_size_opperate dng_generate matches 1.. as @e[type=armor_stand,tag=dng_newLine] run tag @s add dng_line
execute if score $zcolumns_size_opperate dng_generate matches 1.. as @e[type=armor_stand,tag=dng_newLine,tag=dng_line] at @s positioned ~ ~ ~35 run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["dng_as","dng_gen_as","dng_newLine"],Team:"dng_red",Glowing:1b}
execute if score $zcolumns_size_opperate dng_generate matches 1.. as @e[type=armor_stand,tag=dng_newLine,tag=dng_line] run tag @s remove dng_newLine
execute if score $zcolumns_size_opperate dng_generate matches 1.. run scoreboard players remove $zcolumns_size_opperate dng_generate 1 

execute unless score $zcolumns_size_opperate dng_generate matches 0 run schedule function dng_generate_new:rooms/armorstands/columns 1t