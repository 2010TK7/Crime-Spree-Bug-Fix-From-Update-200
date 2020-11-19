local OldFunc = CrimeSpreeManager.on_mission_completed
function CrimeSpreeManager:on_mission_completed(...)
	local OldExtraFunc = managers.experience.current_level
	function managers.experience:current_level()
		return managers.experience:current_rank() >= 25 and OldExtraFunc(self) or 100
	end
	OldFunc(self)
	managers.experience.current_level = OldExtraFunc
end

