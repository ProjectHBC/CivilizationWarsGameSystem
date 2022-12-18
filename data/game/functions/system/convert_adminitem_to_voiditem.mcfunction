##AdminItemをVoidItemに変換(実質削除)します
execute if data storage minecraft:voidchange {toggle:true} run clear @a[tag=!Admin] minecraft:iron_boots{tag:{AdminItem:1b}}
execute if data storage minecraft:voidchange {toggle:true} run clear @a[tag=!Admin] minecraft:villager_spawn_egg{tag:{AdminItem:1b}}
###できればreplaceしたい、そしてこれrepeatでプレイヤーのインベントリに関するから重いかも？
