#壁崩壊後
title @a actionbar {"text":"壁が崩壊しました！","color":"red","bold":true}
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1
bossbar set sys:timer players
bossbar set sys:begin players @a
bossbar set sys:begin name {"text":"-----戦闘開始-----","color":"red"}
bossbar set sys:begin color blue
function game:system/victory
