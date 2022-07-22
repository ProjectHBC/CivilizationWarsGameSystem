#壁崩壊後に実行開始?
#常時実行
#草原チーム勝利フラッグスコアは1
execute if score ジャングルチーム team_number matches 0 run scoreboard players set @e[tag=Timekeeper] victory_team 1
#ジャングルチーム勝利フラッグスコアは2
execute if score 草原チーム team_number matches 0 run scoreboard players set @e[tag=Timekeeper] victory_team 2

#勝利演出(敵チーム人数が0の時)
###今回は仮(言葉が思いつかないので略)
execute if score ジャングルチーム team_number matches 0 run execute in game:experimental run setblock 3 301 -2 minecraft:redstone_block
execute if score 草原チーム team_number matches 0 run execute in game:experimental run setblock 3 301 -2 minecraft:redstone_block
