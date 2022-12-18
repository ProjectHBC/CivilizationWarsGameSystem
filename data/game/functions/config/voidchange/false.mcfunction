##AdminItemをVoidItemに変換するかどうかの切り替え(false)
execute as @s[tag=Admin] run data merge storage minecraft:voidchange {toggle:false}
tellraw @a[tag=Admin] {"text": "System -> config:VoidChangeがfalseに設定されました","color": "green"}

##権限エラー
tellraw @s[tag=!Admin] {"text": "System -> 運営タグを持っていないため実行できませんでした","color": "red"}

##toggle_check(memo)
#tellraw @a {"nbt":"toggle","storage":"voidchange"}
