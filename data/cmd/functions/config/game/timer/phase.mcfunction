#> cmd:config/game/timer/phase
#
# フェーズを設定する
#
# @user

# # 設定
#     $data modify storage config: Timer.Phase set value $(Phase)

# # メッセージ
#     tellraw @a[team=Admin] [{"text": "System -> ","color": "green"},{"text": "フェーズを"},{"storage": "config:","nbt": "Timer.Phase"},{"text": "に設定しました(固定値より現在変更不可)"}]