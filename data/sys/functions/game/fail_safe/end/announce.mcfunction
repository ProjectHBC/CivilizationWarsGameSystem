#> sys:game/fail_safe/end/announce
#
# 勝利チームや戦績の発表など
#
# @within function sys:game/fail_safe/end/

# TODO?
# ディレクトリ"announcement"以下でファイルを管理するほうが楽なのかもしれない

#> 発表順番
# @private
    #declare score_holder #StatTemp

# 発表順番を加算
    scoreboard players add #StatTemp Temporary 1

# 勝利チーム
    execute if score #StatTemp Temporary matches 1 unless data storage global: {WinnerTeam: "Tie"} run tellraw @a [{"text": "Announce -> "},{"text": "勝利チームは\""},{"storage": "global:","nbt": "WinnerTeam"},{"text": "\"です！"}]
    execute if score #StatTemp Temporary matches 1 if data storage global: {WinnerTeam: "Tie"} run tellraw @a [{"text": "Announce -> "},{"text": "勝敗は引き分けとなりました！"}]
    execute if score #StatTemp Temporary matches 1 run schedule function sys:game/fail_safe/end/announce 5s

# 最多キル数とかのランキングを今後作る
    execute if score #StatTemp Temporary matches 2 run tellraw @a [{"text": "Announce -> "},{"text": "統計情報の発表するシステムは今後のアプデに期待してね！"}]
    execute if score #StatTemp Temporary matches 2 run schedule function sys:game/fail_safe/end/announce 5s

# メインファイルを呼び出し
    execute if score #StatTemp Temporary matches 3 run schedule function sys:game/fail_safe/end/ 5s

# 発表カウントを削除
    execute if score #StatTemp Temporary matches 3 run scoreboard players reset #StatTemp