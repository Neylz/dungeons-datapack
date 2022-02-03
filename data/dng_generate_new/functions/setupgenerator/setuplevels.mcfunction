execute if score $setupfirstaslevel dng_generate matches 1.. as @e[type=armor_stand,tag=dng_gen_as_main] at @s run tp @s ~ ~-35 ~
execute if score $setupfirstaslevel dng_generate matches 1.. run scoreboard players remove $setupfirstaslevel dng_generate 1

execute unless score $setupfirstaslevel dng_generate matches ..0 run schedule function dng_generate_new:setupgenerator/setuplevels 1t
execute if score $setupfirstaslevel dng_generate matches ..0 run schedule function dng_generate_new:setupgenerator/setupfirst 1t