#> cmd:user/switch_admin
#
# チームをAdminかそうでないかに切り替える
#
# @user

# Adminチームを退出
tellraw @s[team=Admin] [{"text": "System -> ","color": "green"},{"text": "Adminチームを退出しました"}]
execute as @s[team=Admin] run return run team leave @s

# Adminチームに参加
team join Admin
tellraw @s [{"text": "System -> ","color": "green"},{"text": "Adminチームに参加しました"}]