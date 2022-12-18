#スタートメニュー
tellraw @a[tag=Admin] {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
tellraw @a[tag=Admin] {"text": "\"GameSystem\"がロードされました。","color": "green"}
tellraw @a[tag=Admin] [{"text": "verβ0.1.4 ","color": "gold"},{"text": "・コマンドリストの確認","bold": true,"clickEvent": {"action": "run_command","value": "/function cmd:help"},"hoverEvent": {"action": "show_text", "contents": "/function cmd:help"}}]
tellraw @a[tag=Admin] {"text": ""}
tellraw @a[tag=Admin] [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
tellraw @a[tag=Admin] {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}

#tellraw @s [{"text": "GameSystem","hoverEvent": {"action": "show_item","value": "{ID:iron_boots,tag:JetBoots}"}}]