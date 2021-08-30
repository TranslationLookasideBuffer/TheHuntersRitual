ScriptName HRQ01RitualTriggerScript Extends ReferenceAlias

Quest Property HRQ01Quest Auto
Actor Property PlayerRef Auto
Sound Property Audio Auto
ReferenceAlias Property EntrancePortcullis Auto

Auto State Active
	Event OnTriggerEnter(ObjectReference akTriggerRef)
		GoToState("Inactive")
        If HRQ01Quest.GetCurrentStageID() == 100 && akTriggerRef == PlayerRef
            EntrancePortcullis.GetReference().SetOpen(False)
            Audio.Play(GetReference())
			HRQ01Quest.SetCurrentStageID(110)
			GoToState("Inactive")
		Else
			GoToState("Active")
		EndIf
	EndEvent
EndState

State Inactive
	;Do nothing
EndState