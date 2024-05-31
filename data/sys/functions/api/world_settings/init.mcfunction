#> sys:api/world_settings/init
#
# ゲームに関するデータを削除し、初期状態にする  
# 主にゲーム開始/終了時に呼び出される
#
# @api

# 全アイテム・経験値等を消去
    clear @a[team=TeamA]
    clear @a[team=TeamB]
    xp set @a[team=TeamA] 0 levels
    xp set @a[team=TeamB] 0 levels
    xp set @a[team=TeamA] 0 points
    xp set @a[team=TeamB] 0 points

# 戦績等のスコアボードをリセット
    scoreboard players reset @a DeathCount
    scoreboard players reset @a KillCount

# データリセット
    scoreboard players reset #Timer1s Global