#> sys:game/manage/death/break_after
#
# 壁崩壊後の死亡処理
#
# @within function sys:game/manage/death/

# メッセージ
    tellraw @s [{"text": "System -> ","color": "green"},{"text": "復活できません！"}]

# 生存タグを剝奪
    tag @s remove alive

# ゲームモード変更
    gamemode spectator @s

# リセット
    scoreboard players reset @s