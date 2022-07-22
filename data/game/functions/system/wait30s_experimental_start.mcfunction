##30sに実行されるもの
#-----gamestart-----
##チームtp先の囲いバリアブロックを破壊
execute in game:experimental run fill 0 100 -5 4 104 5 minecraft:air replace minecraft:barrier
title @a actionbar {"text": "装備を整え、敵チームを滅ぼせ","color": "white"}
tellraw @a {"text": "TIPS:/teammsgまたは/tmでチームチャットが行えます","color": "white"}
##ゲーム内時間をセット
time set day
