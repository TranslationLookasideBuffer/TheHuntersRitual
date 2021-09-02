# TheHuntersRitual

An example mod for learning the different components of modding in Skyrim.

## Screenshots

See [this page](screenshots/screenshots.md).

## What does it do?

This adds a small shack in Falkreath hold and a new dungeon in the Reach. These two locations are visted as part of a quest that requires collecting animal pelts and a fight in the dungeon. While fairly simple this was never meant to be a _beautiful_, _immersive_ mod, but rather one to learn the ropes of the various systems involved in modding Skyrim.

You get a decent enchanted amulet at the end, so that's cool.

## Technical Details (i.e spoilers)

* You can get to the shack with `cow Tamriel -9 -16`, collect the journal near the bed to start the quest.
* You can get to the new dungeon with `cow Tamriel -31 -7`. Alternatively `coc NightshadeCavern01` will drop you in the middle of the dungeon.
    * Some enemies are disabled and half the dungeon is inaccessible before the quest is started. Use `SetStage HRQ01 20` to enable these.
* Quest identifer is `HRQ01`, see the stages table below.

    | Stage | Description |
    |---:|:---|
    |20|Quest start, journal picked up|
    |30|Bear pelts offered|
    |40|Snow bear pelts offered|
    |50|Sabre cat pelts offered|
    |60|Sabre cat snow pelts offered|
    |70|Wolf pelts offered|
    |80|Ice wolf pelts offered|
    |90|All pelts offered, immediately progresses to next stage|
    |100|Waiting to start ritual|
    |110|Ritual start, lock entrance/exit, spawn spirit wolf|
    |120|Spawn sprit sabre cat|
    |130|Spawn spirit bear|
    |140|Spawn spirit ice wolf|
    |150|Spawn spirit snowy sabre cat|
    |160|Spawn spirit snow bear|
    |170|Ritual complete, spawn reward and unlock entrance/exit|
    |200|Reward taken, quest complete|

## Other thoughts

* Papyrus is _okay_
* Some of the decisions Bethesda made in their scripts are _odd_.
  * For example, part of `FFR04PlayerScript.psc`:
    ```
    Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)

        if pFFR04Quest.GetStageDone(20) == 1
            if pFFR04Quest.GetStageDone(30) == 0
                if akBaseItem == pNirn
                    pFFR04QS.NirnCount()
                endif
            endif
        endif

        if pFFR04Quest.GetStageDone(20) == 1
            if pFFR04Quest.GetStageDone(50) == 0
                if akBaseItem == pDeathbell
                    pFFR04QS.DeathbellCount()
                endif
            endif
        endif

        if pFFR04Quest.GetStageDone(20) == 1
            if pFFR04Quest.GetStageDone(40) == 0
                if akBaseItem == pNightshade
                    pFFR04QS.NightshadeCount()
                endif
            endif
        endif

    endEvent
    ```
    Could have been written as follows:
    ```
    Event OnItemAdded(Form akBaseItem, int aiItemCount, ObjectReference akItemReference, ObjectReference akSourceContainer)
        If pFFR04Quest.GetStageDone(20)
            If !pFFR04Quest.GetStageDone(30) && akBaseItem == pNirn
                pFFR04QS.NirnCount()
            ElseIf !pFFR04Quest.GetStageDone(40) && akBaseItem == pNightshade
                pFFR04QS.NightshadeCount()
            ElseIf !pFFR04Quest.GetStageDone(50) && akBaseItem == pDeathbell
                pFFR04QS.DeathbellCount()
            EndIf
        EndIf
    EndEvent
    ```
    Just _baffling_.

* I with Papyrus had a styleguide and linter. That's a least one nice thing about golang.
* The Creation Kit is extremely tempermental, save _often_.