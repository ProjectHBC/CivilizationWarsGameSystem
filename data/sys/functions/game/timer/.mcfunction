#> sys:game/timer/
#
# 時間管理に関する全てを取り仕切る(常時実行)
#
# @within function sys:core/tick

# 1秒タイマーを管理
    function sys:game/timer/count/1s

# タイマーの管理ファイルを1秒ごとにロード
    execute if score #Timer1s Global matches 0 run function sys:game/timer/count/