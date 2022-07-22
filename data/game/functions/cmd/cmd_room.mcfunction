#マップ管理
execute at @s[tag=Admin] in game:experimental run tp @s[tag=Admin] 2 300 -3
tellraw @s[tag=Admin] {"text": "System -> cmd_roomにtpしました","color": "green"}
