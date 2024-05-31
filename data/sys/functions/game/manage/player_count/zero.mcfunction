#> sys:game/manage/player_count/zero
#
# チームのプレイヤーが0人か
#
# @within function sys:game/manage/player_count/

# チームのプレイヤーが0人だったら終了
    execute if score #PlayerTeamA Global matches 0 run function sys:game/fail_safe/end/
    execute if score #PlayerTeamB Global matches 0 run function sys:game/fail_safe/end/