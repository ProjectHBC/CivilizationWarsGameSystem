#> sys:game/manage/world
#
# ディメンションの設定
#
# @within function sys:game/fail_safe/start/

# 呼び出し
    function sys:game/manage/select_dimension
    execute store result score #Timer Global run data get storage config: Timer.Max

# ゲーム開始アナウンス
    tellraw @a [{"text": "System -> ","color": "green"},{"text": "ゲームが開始しました！"}]