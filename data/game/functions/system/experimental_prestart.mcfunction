##ロードの為の簡易テレポート
##草原チーム
execute at @a[team=sougen] run effect give @s minecraft:regeneration 10 252 true
execute at @a[team=sougen] in game:experimental run tp 3 300.5 3
##ジャングルチーム
execute at @a[team=janguru] run effect give @s minecraft:regeneration 10 252 true
execute at @a[team=janguru] in game:experimental run tp 1 300.5 3

##メッセージ
tellraw @a "ゲームをロード中…"
