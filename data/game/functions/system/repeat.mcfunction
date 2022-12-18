#常時実行
#=====遺産=====
#team-sougenの人数からscoreboard-sougen_memberに代入します
#execute store result score @a[team=sougen] sougen_member run team list sougen
#team-junguruの人数からscoreboard-janguru_memberに代入します
#execute store result score @a[team=janguru] janguru_member run team list janguru

##
#scoreboard players operation 草原チーム team_number = @a[team=sougen] sougen_member
#scoreboard players operation ジャングルチーム team_number = @a[team=janguru] junguru_member

##チームの死亡回数を記録
#execute as @a[team=sougen,scores={deathcount=1}] run scoreboard players add sougen_death deathcount 1
#execute as @a[team=janguru,scores={deathcount=1}] run scoreboard players add janguru_death deathcount 1
#scoreboard players set @a deathcount 0
##最後の一人
#execute if entity @e[name="草原チーム",scores={team_number=1}] run scoreboard players set @a[team=sougen] lastcount 1
#scoreboard players set @a lastcount 0

###プレイヤーがいない時機能しなくなる
###プレイするときはすべてプレイヤー(ダミープレイヤーがいない状態)なので
###最後の一人になった時-
###チームに誰も居ないのを検知した時XXXチーム-team_numberを-1する
###最後の一人にスコアを与える
###最後の一人のチームのデスカウントが1になった時
###最後の一人のスコアを0にして敗北

#####警告:プレイヤーが抜けたらゲームシステムが崩壊します
#####いいえ崩壊しません

##scoreboardのリセット
#scoreboard players set @a sougen_member 0
#scoreboard players set @a janguru_member 0
#==========

##ユーザー管理タグ
###作るかわからない

##チーム人数スコアボードを計算
execute store result score 草原チーム team_number run team list sougen
execute store result score ジャングルチーム team_number run team list janguru

##死亡したプレイヤーをスペクテイターモードに切り替える
gamemode spectator @a[scores={deathcount=1}]
##死亡したプレイヤーをチームから離脱させる
team leave @a[scores={deathcount=1}]
##全員のデスカウントを0に設定(これで元通り?)
scoreboard players set @a deathcount 0
###チーム勝利数の実績作るなら使えないけどそれめんどくさそうだから作らないだろうな
###死んだプレイヤーをスペクテイターモードに切り替えるタイミングをtimerで範囲指定

##タイマーが0の時に0に設定(停止後終了ループ) ##自動でブレイクしないか？
##execute if entity @e[tag=Timekeeper,scores={timer=0}] run scoreboard players set @e[tag=Timekeeper] timer 0

##壁の管理
##Timekeeperのtimerが1以上のとき
#execute if entity @e[tag=Timekeeper,scores={timer=1..}] run function game:system/wall/create_fill_wall_gen
##Timekeeperのtimerが0のとき
execute if entity @e[tag=Timekeeper,scores={timer=..0}] run function game:system/wall/break_fill_wall_gen

##AdminItemをVoidItemに変換(実質削除)します
function game:system/convert_adminitem_to_voiditem
