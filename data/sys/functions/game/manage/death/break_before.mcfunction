#> sys:game/manage/death/break_before
#
# 壁崩壊前の死亡処理
#
# @within function sys:game/manage/death/

# apiを引数指定して呼び出し
    function sys:api/world_settings/player/api {Selector1: "@a[team=TeamA,scores={DeathCount=1..}]", Selector2: "@a[team=TeamB,scores={DeathCount=1..}]"}

# ペナルティ（penaltyフォルダに移して細かく設定するかも）
    effect give @s minecraft:hunger 10 99 true

# メッセージ
    tellraw @s [{"text": "System -> ","color": "green"},{"text": "壁が崩壊する前なら何回でも復活できます"}]

# リセット
    scoreboard players reset @s