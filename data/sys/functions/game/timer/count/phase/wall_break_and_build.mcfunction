#> sys:game/timer/count/phase/wall_break_and_build
#
# 壁を壊して設置する
#
# @within function sys:game/timer/count/phase/change

# 壁を破壊
    $execute in $(Dimension) run function sys:api/world_settings/world/wall/fill_all {block: "air"}
# y60までの壁を設置
    $execute in $(Dimension) run function sys:api/world_settings/world/wall/fill_y60 {block: "stone"}