scoreboard objectives add dng_generate dummy
scoreboard objectives add dng_numbers dummy

#setup numbers for maths
scoreboard players set $2 dng_numbers 2


# setup data dungeons
## size (square)
scoreboard players set $size dng_generate 3
## levels of the dungeon
scoreboard players set $levels dng_generate 1

#teams
team add dng_red
team modify dng_red color red
team add dng_dark_green
team modify dng_dark_green color dark_green