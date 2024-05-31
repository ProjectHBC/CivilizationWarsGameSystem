#> sys:game/manage/admin/scoreboard
#
# スコアボード関連
#
# @within function sys:game/manage/admin/

#> Score
# @private
    #declare score_holder ゲーム参加プレイヤー数
    #declare score_holder チームAのプレイヤー数
    #declare score_holder チームBのプレイヤー数
    #declare score_holder タイマー

# 表示
    execute store result score ゲーム参加プレイヤー数 Admin run scoreboard players get #Player Global
    execute store result score チームAのプレイヤー数 Admin run scoreboard players get #PlayerTeamA Global
    execute store result score チームBのプレイヤー数 Admin run scoreboard players get #PlayerTeamB Global
    execute store result score タイマー Admin run scoreboard players get #Timer Global
    #最多キルプレイヤー名