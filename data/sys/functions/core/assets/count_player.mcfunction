#> sys:core/assets/count_player
#
# プレイヤーの数を数える、常時実行
#
# @within function sys:core/tick

# チームごとのプレイヤー数
    execute store result score #PlayerTeamA Global if entity @e[team=TeamA,tag=alive]
    execute store result score #PlayerTeamB Global if entity @e[team=TeamB,tag=alive]

# ゲームに参加している(A,Bチームに参加している)プレイヤーの人数を計算して記録
    scoreboard players set #Player Global 0
    scoreboard players operation #Player Global += #PlayerTeamA Global
    scoreboard players operation #Player Global += #PlayerTeamB Global