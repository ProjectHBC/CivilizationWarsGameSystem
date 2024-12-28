#> sys:game/fail_safe/start/prepare/
#
# ゲームを開始するのに必要な準備
#
# @within function sys:game/fail_safe/start/

# A,Bチームに参加者が1人以上であるか
    execute unless score #PlayerTeamA Global matches 1.. run return run data modify storage api: Error.Id set value "PlayerTeamA.NonExistsError"
    execute unless score #PlayerTeamB Global matches 1.. run return run data modify storage api: Error.Id set value "PlayerTeamB.NonExistsError"
# Timer.Maxは1以上であるか
    execute store result score #Timer Global run data get storage config: Timer.Max
    execute unless score #Timer Global matches 1.. run return run data modify storage api: Error.Id set value "Timer.ZeroError"
# Timer.Phaseは0
    data modify storage config: Timer.Phase set value 0
# Dimensionは設定されているか
    execute unless function sys:game/fail_safe/start/prepare/dimension run return run data modify storage api: Error.Id set value "Dimension.UndefinedError"