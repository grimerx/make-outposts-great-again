function updateIfExistsAndNotMakingItLarger( name, newStackSize )
	if( data.raw["item"][name] ) then
		if( data.raw["item"][name].stack_size > newStackSize ) then
			data.raw["item"][name].stack_size = newStackSize
		end
	end
end

function updateIfExistsAndNotMakingItSmaller( name, newStackSize )
	if( data.raw["item"][name] ) then
		if( data.raw["item"][name].stack_size < newStackSize ) then
			data.raw["item"][name].stack_size = newStackSize
		end
	end
end

local stackSize = 50
-- Would be nice to grab these from deadlock directly
local deadlockStackSize = math.ceil( stackSize / 5 )
local deadlockCrateSize = 1

updateIfExistsAndNotMakingItLarger("angels-ore1", stackSize)
updateIfExistsAndNotMakingItLarger("angels-ore2", stackSize)
updateIfExistsAndNotMakingItLarger("angels-ore3", stackSize)
updateIfExistsAndNotMakingItLarger("angels-ore4", stackSize)
updateIfExistsAndNotMakingItLarger("angels-ore5", stackSize)
updateIfExistsAndNotMakingItLarger("angels-ore6", stackSize)

-- 
-- Crating recipe auto-adjusts to stack size.  As long as we do the previous settings in data-updates,
-- crating recipies generating in final-updates will make smaller crates.  So we don't want to limit stack size in actuality.
--
-- -- if deadlock_crating then
	-- updateIfExistsAndNotMakingItLarger("deadlock-crate-angels-ore1", deadlockCrateSize)
	-- updateIfExistsAndNotMakingItLarger("deadlock-crate-angels-ore2", deadlockCrateSize)
	-- updateIfExistsAndNotMakingItLarger("deadlock-crate-angels-ore3", deadlockCrateSize)
	-- updateIfExistsAndNotMakingItLarger("deadlock-crate-angels-ore4", deadlockCrateSize)
	-- updateIfExistsAndNotMakingItLarger("deadlock-crate-angels-ore5", deadlockCrateSize)
	-- updateIfExistsAndNotMakingItLarger("deadlock-crate-angels-ore6", deadlockCrateSize)
-- -- end

if deadlock_stacking then
	updateIfExistsAndNotMakingItLarger("deadlock-stack-angels-ore1", deadlockStackSize)
	updateIfExistsAndNotMakingItLarger("deadlock-stack-angels-ore2", deadlockStackSize)
	updateIfExistsAndNotMakingItLarger("deadlock-stack-angels-ore3", deadlockStackSize)
	updateIfExistsAndNotMakingItLarger("deadlock-stack-angels-ore4", deadlockStackSize)
	updateIfExistsAndNotMakingItLarger("deadlock-stack-angels-ore5", deadlockStackSize)
	updateIfExistsAndNotMakingItLarger("deadlock-stack-angels-ore6", deadlockStackSize)
end