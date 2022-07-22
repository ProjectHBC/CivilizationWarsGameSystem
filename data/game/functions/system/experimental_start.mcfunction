##experimentalワールド
#16進数:Timekeeper:54,69,6d,65,6b,65,65,70,65,72 -> 54696d65-6b65-6570-65720000
#10進数:Timekeeper:84,105,109,101,107,101,101,112,101,114 -> 84105109,10110710,110111210,1114(8,8,9,4)
#=> UUID:[I;84105109,10110710,110111210,1114],
#-----system-----
##壁を生成 ##システム変更で停止
#execute in game:experimental run function game:system/wall/create_fill_wall 
##「Timekeeper」タグのアーマースタンドをexperimentalワールドから削除
execute in game:experimental run kill @e[tag=Timekeeper]
##「Timekeeper」タグのアーマースタンドをexperimentalワールドに召喚
execute in game:experimental run summon armor_stand 1 300 -2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["Timekeeper"],CustomName:'{"text":"Timekeeper"}'}
##勝利チーム検知コマンドブロック起動要レッドストーンブロックを削除
execute in game:experimental run setblock 3 301 -2 air
###gametime:3day = realtime:60min=3600sec +30sec
##タイマーを60分に設定 ##後に自由変更可にする予定
scoreboard players set @e[tag=Timekeeper] timer 3630
##演算処理用(/60)のためのスコアを入力
scoreboard players set @e[tag=Timekeeper] division_60 60
##「sys:timer」ボスバーを全員に見せる
bossbar set sys:timer players @a
##ボスバーを黄色で表示する
bossbar set sys:timer color yellow
##ボスバーを6分割で表示する
bossbar set sys:timer style notched_6
##「Timekeeper」の「timer」スコアを取得し、「sys:timer」ボスバーのmaxを指定する
execute in game:experimental store result bossbar sys:timer max run scoreboard players get @e[tag=Timekeeper,limit=1] timer

##勝利チーム検知コマンドブロックを設置
execute in game:experimental run setblock 3 300 -2 minecraft:command_block{Command:"function game:system/victory_message"}

##チームの人数スコアボード
##草原チーム
#scoreboard players set 草原チーム team_number 1
##ジャングルチーム
#scoreboard players set ジャングルチーム junguru_member 1

#-----player-----
##草原チーム
#execute in game:experimental run fill 0 100 -1 4 104 -5 minecraft:barrier hollow
execute at @a[team=sougen] in game:experimental run gamemode survival @a[team=sougen]
execute at @a[team=sougen] in game:experimental run clear @a[team=sougen]
execute at @a[team=sougen] in game:experimental run tp @a[team=sougen] 2 101.5 -3
execute at @a[team=sougen] in game:experimental run spawnpoint @a[team=sougen] 2 101 -3
##ジャングルチーム
#execute in game:experimental run fill 0 100 1 4 104 5 minecraft:barrier hollow
execute at @a[team=janguru] in game:experimental run gamemode survival @a[team=janguru]
execute at @a[team=janguru] in game:experimental run clear @a[team=janguru]
execute at @a[team=janguru] in game:experimental run tp @a[team=janguru] 2 101.5 3
execute at @a[team=janguru] in game:experimental run spawnpoint @a[team=janguru] 2 101 3
##運営タグ(チームに所属していない)
execute at @a[tag=Admin,team=!sougen,team=!janguru] in game:experimental run tp @a[tag=Admin,team=!sougen,team=!janguru] 0 101 0
gamemode spectator @a[tag=Admin,team=!sougen,team=!janguru]
tellraw @a[tag=Admin,team=!sougen,team=!janguru] {"text":"System -> 俯瞰視点でゲームに参加します","color": "green"}
tellraw @a[tag=Admin,team=!sougen,team=!janguru] {"text":"System -> ≪管理者メニューを表示≫","color": "green","hoverEvent": {"action": "show_text","value": "現在製作中です"}}

#-----rule-----
###これ要らないかな

#-----gamestart-----
tellraw @a "30s..."
function game:system/count_timer
schedule function game:system/wait30s_experimental_start 30s
