#> sys:core/tick
#
# 常時実行なファイル
#
# @within tag/function minecraft:tick

# プレイヤーの人数を記録
    function sys:core/assets/count_player

# 時間管理
    execute if data storage global: {Condition: "Active"} run function sys:game/timer/

# manage
    function sys:game/manage/