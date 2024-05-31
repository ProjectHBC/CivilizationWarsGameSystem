#> sys:core/assets/start_menu
#
# スタートメニューを表示する  
# 実行者はAdmin(チーム)である必要がある
#
# @input as player
# @within function main:core/load

#スタートメニュー
    tellraw @s {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}
    tellraw @s {"text": "\"CivilizationWarsGameSystem\"がロードされました。","color": "green"}
    tellraw @s [{"storage":"global:","nbt":"Version","color": "gold"},{"text": "・コマンドリストの確認","bold": true,"clickEvent": {"action": "run_command","value": "/function cmd:help"},"hoverEvent": {"action": "show_text", "contents": "/function cmd:help"}}]
    tellraw @s {"text": ""}
    tellraw @s [{"text": "created by ","color": "blue"},{"text": "iruru1111","color": "aqua","underlined": true,"clickEvent": {"action": "open_url","value":"https://twitter.com/iruru1111"}}]
    tellraw @s {"text": "~~~~~~~~~~~~~~~~~~~~~~~~~","color": "gray"}