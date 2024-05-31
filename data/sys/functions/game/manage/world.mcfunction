#> sys:game/manage/world
#
# ディメンションの設定
#
# @within function sys:game/fail_safe/start/

# 呼び出し
    function sys:api/world_settings/world/ with storage config: Dimension
    function sys:api/world_settings/player/ with storage config: Dimension
    execute store result score #Timer Global run data get storage config: Timer.Max

# ゲーム開始アナウンス
    tellraw @a [{"text": "System -> ","color": "green"},{"text": "ゲームが開始しました！"}]