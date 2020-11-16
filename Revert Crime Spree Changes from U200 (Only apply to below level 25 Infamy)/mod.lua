local OldFunc = InfamyTreeGui._setup
function InfamyTreeGui:_setup()
	local OldExtraFunc =  managers.crime_spree.in_progress
	function managers.crime_spree:in_progress()
		return managers.experience:current_rank() >= 25 and OldExtraFunc(self)
	end
	OldFunc(self)
	managers.crime_spree.in_progress = OldExtraFunc
end
