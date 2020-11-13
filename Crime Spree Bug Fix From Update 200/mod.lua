local OldFunc = InfamyTreeGui._setup
function InfamyTreeGui:_setup()
	local OldExtraFunc =  managers.crime_spree.in_progress
	function managers.crime_spree:in_progress()
		return false
	end
	OldFunc(self)
	managers.crime_spree.in_progress = OldExtraFunc
end
