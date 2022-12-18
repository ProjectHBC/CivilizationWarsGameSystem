##team_of_janguru
give @s[tag=Admin] villager_spawn_egg{display:{Name:'{"text":"team_of_janguru","color":"gold","italic":false}',Lore:['{"text":"テスト用のジャングルチームユーザーを召喚","color":"white","italic":false}','{"text":"Admin Item","color":"dark_red","italic":false}']},tag:{AdminItem:1b},EntityTag:{NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:1b,Team:"janguru",NoAI:1b,CanPickUpLoot:0b,Tags:["team_of_janguru"],CustomName:'{"text":"team_of_janguru"}',ArmorItems:[{},{},{},{id:"minecraft:jungle_wood",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:0}],Offers:{}}} 1
tellraw @s[tag=Admin] {"text": "System -> [team_of_janguru]を1個与えました","color": "green"}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}
