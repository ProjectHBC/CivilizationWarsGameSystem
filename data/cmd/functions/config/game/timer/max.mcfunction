#> cmd:config/game/timer/max
#
# タイマーを設定する  
# int型で代入
#
# @user

# 設定
    $data modify storage config: Timer.Max set value $(Max)

# メッセージ (分秒を追加する場合は変換する計算式をapi化させる)
    tellraw @a[team=Admin] [{"text": "System -> ","color": "green"},{"text": "タイマーを"},{"storage": "config:","nbt": "Timer.Max"},{"text": "秒に設定しました"}]