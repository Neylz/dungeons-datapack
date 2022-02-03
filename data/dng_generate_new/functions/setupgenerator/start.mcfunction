# INFO:
# Each square is 35x35x35, armor stand at center
# Middle : 18th block
# ========================

#setup the first armor stand
scoreboard players operation $setupfirstas dng_generate = $size dng_generate
scoreboard players operation $setupfirstas dng_generate /= $2 dng_numbers
scoreboard players operation $setupfirstaslevel dng_generate = $levels dng_generate
scoreboard players operation $setupfirstaslevel dng_generate /= $2 dng_numbers

#lines 
scoreboard players operation $xlines_size_opperate dng_generate = $size dng_generate

summon armor_stand ~ ~ ~17 {NoGravity:1b,Tags:["dng_as","dng_gen_as","dng_gen_as_main"],Glowing:1b}
function dng_generate_new:setupgenerator/setuplevels