ScriptName HRPlaySoundOnceOnTriggerEnterScript Extends ObjectReference

Sound Property SFX Auto
Actor Property PlayerRef Auto

Auto State Active
    Event OnTriggerEnter(ObjectReference akActionRef)
        GoToState("Inactive")
        Sound.SetInstanceVolume(SFX.Play(PlayerRef), 1.0)
    EndEvent
EndState

State Inactive
    ;Do nothing
EndState

