#> sys:core/assets/_index.d
# @private

#> Global
# @public
    #declare storage global:

#> Teams
# ゲームを管理する上でも表面上でも必須となるチーム
# @public
    #declare team TeamA
    #declare team TeamB
    #declare team Admin

#> Player  
# ゲームに参加しているプレイヤー人数
# @within function
#   sys:core/assets/count_player
#   sys:api/world_settings/player/team_join
#   sys:game/**
    #declare score_holder #Player
    #declare score_holder #PlayerTeamA
    #declare score_holder #PlayerTeamB
    #declare tag alive

#> Bossbar
# タイマー表示用ボスバー
# @within function
#   sys:game/timer/count
    #declare bossbar global:timer