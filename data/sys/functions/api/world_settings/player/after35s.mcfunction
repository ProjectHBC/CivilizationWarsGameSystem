#> sys:api/world_settings/player/after35s
#
# 35s後
#
# @within function sys:api/world_settings/player/api

# エリトラ消去
    execute as @a[nbt=!{active_effects:[{id:"minecraft:resistance",amplifier:4b}]}] run clear @s minecraft:elytra