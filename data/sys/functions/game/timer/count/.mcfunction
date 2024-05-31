#> sys:game/timer/count/
#
# タイマーのカウントアップ/ダウンを管理する
#
# @within function sys:game/timer/

# フェーズ切り替え
    execute if score #Timer Global matches 0 if data storage config: {Timer:{Phase: 0}} run function sys:game/timer/count/phase/change
# 壁崩壊前
    execute if data storage config: {Timer:{Phase: 0}} run function sys:game/timer/count/phase/0
# 壁崩壊後
    execute if data storage config: {Timer:{Phase: 1}} run function sys:game/timer/count/phase/1