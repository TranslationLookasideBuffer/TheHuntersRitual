ScriptName HRQ01RitualTriggerScript Extends ReferenceAlias

Quest Property HRQ01Quest Auto
Actor Property PlayerRef Auto
Sound Property Audio Auto
ReferenceAlias Property EntrancePortcullis Auto

Auto State Active
	Event OnTriggerEnter(ObjectReference akTriggerRef)
        If HRQ01Quest.GetCurrentStageID() == 100 && akTriggerRef == PlayerRef
            EntrancePortcullis.GetReference().SetOpen(False)
            Audio.Play(GetReference())
			GoToState("Inactive")
		EndIf
	EndEvent
EndState

State Inactive
	;Do nothing
EndState