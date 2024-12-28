#> sys:core/assets/buildup
#
# データパックを動かすのに必要なオブジェクトを生成する
#
# @within function sys:core/load

#> バージョン設定  
# バージョン管理を主な仕事とするシステム管理ストレージ  
# アップデートする必要があるかどうかの判定等に使用、変更時loadファイルを修正してください  
# @public
    data modify storage global: Version set value "v0.2-beta"

#> ゲーム管理上で必要となるスコア保存用  
# @public
    scoreboard objectives add Global dummy

#> 一時的なスコア保存用  
# suffixとしてTempを付けてください
# @public
    scoreboard objectives add Temporary dummy

#> 定数を定義する  
# @public
    scoreboard objectives add Constant dummy
function sys:core/assets/set_constant

#> 統計データ
# @public
    scoreboard objectives add DeathCount deathCount
    scoreboard objectives add KillCount playerKillCount

#> チーム用チーム別スコアボード
# @public
    scoreboard objectives add TeamA dummy
    scoreboard objectives add TeamB dummy
    scoreboard objectives add Admin dummy

#> 管理表示用チーム  
# ゲームを管理する上でも表面上でも必須となるチーム  
# @public
    # チーム作成
        team add TeamA "Aチーム"
        team add TeamB "Bチーム"
        team add Admin "運営"
    # チーム編集
        team modify TeamA friendlyFire false
        team modify TeamA nametagVisibility hideForOtherTeams
        team modify TeamA seeFriendlyInvisibles true
        team modify TeamA color red
        team modify TeamB friendlyFire false
        team modify TeamB nametagVisibility hideForOtherTeams
        team modify TeamB seeFriendlyInvisibles true
        team modify TeamB color blue
        team modify Admin color dark_red

#> タイマー表示用のボスバー
# @public
    bossbar add global:timer "Timer"

#> ストレージの作成
# global:
    data modify storage global: Condition set value "Inactive"
    data modify storage global: WinnerTeam set value ""
# api:
    data modify storage api: Error.Id set value ""
    data modify storage api: Error.UniqueId set value ""
# config:
    data modify storage config: Timer.Max set value 0
    data modify storage config: Timer.Phase set value 0
    data modify storage config: Dimension set value "None"