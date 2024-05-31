#> cmd:config/game/get
#
# ゲームに関するコンフィグを表示
#
# @user

# メッセージ
    tellraw @a[team=Admin] [{"text": "System -> ","color": "green"},{"text": "\n現在設定中のコンフィグは以下の通りです"}]
    tellraw @a[team=Admin] [{"text": "Timer.Max: ","color": "green"},{"storage": "config:","nbt": "Timer.Max"},{"text": " , "},{"text": "Timer.Phase: "},{"storage": "config:","nbt": "Timer.Phase"}]
    tellraw @a[team=Admin] [{"text": "Dimension: ","color": "green"},{"storage": "config:","nbt": "Dimension"}]