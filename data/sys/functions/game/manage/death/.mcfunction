#> sys:game/manage/death/
#
# 死亡したときの処理、Activeのときのみ常時実行
#
# @within function sys:game/manage/

# Adminは死亡をカウントしない
    scoreboard players reset @a[team=Admin]

# phase0の時には死として扱わない
    execute if data storage config: {Timer:{Phase: 0}} as @a[scores={DeathCount=1..}] run function sys:game/manage/death/break_before
# phase1の時には死（この感じ、storageだけでなく、スコアボードでも管理したほうが良いかも？）
    execute if data storage config: {Timer:{Phase: 1}} as @a[scores={DeathCount=1..}] run function sys:game/manage/death/break_after