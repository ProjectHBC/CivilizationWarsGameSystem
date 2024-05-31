#> sys:game/fail_safe/end/calculation
#
# 最終的な統計データを計算する
#
# @within function  sys:game/fail_safe/end/

# 勝利チームを決める
    execute if score #PlayerTeamA Global > #PlayerTeamB Global run data modify storage global: WinnerTeam set value "TeamA"
    execute if score #PlayerTeamA Global < #PlayerTeamB Global run data modify storage global: WinnerTeam set value "TeamB"
    execute if score #PlayerTeamA Global = #PlayerTeamB Global run data modify storage global: WinnerTeam set value "Tie"

# キル数ランキングを計算する
    #nothing