#> sys:game/timer/count/1s
#
# 1秒のタイマーを構築
#
# @within function sys:game/timer/

#> Timer1s  
# 必ず0を用いてください  
# @within function
#   sys:game/timer/**
#   sys:api/world_settings/init
    #declare score_holder #Timer1s

# 20tick修正
    execute unless score #Timer1s Global matches 1..20 run scoreboard players set #Timer1s Global 20
# 1tick減算
    scoreboard players remove #Timer1s Global 1