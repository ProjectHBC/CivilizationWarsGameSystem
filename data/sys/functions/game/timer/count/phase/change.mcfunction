#> sys:game/timer/count/phase/change
#
# フェーズの切り替え等
#
# @within function sys:game/timer/count/

# 切り替え
    data modify storage config: Timer.Phase set value 1
# ボスバーオフ
    bossbar set global:timer players
# 壁に関すること
    function sys:game/timer/count/phase/wall_break_and_build with storage config: Dimension
# メッセージ
    tellraw @a [{"text": "System -> ","color": "green"},{"text": "壁が崩壊しました！"}]