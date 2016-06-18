ITEM.Name = 'Small Backpack'
ITEM.Price = 0
ITEM.Model = 'models/modified/backpack_3.mdl'
ITEM.Attachment = 'chest'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1, 0)
	pos = pos + (ang:Forward() * -2.048) + (ang:Right() * 0.004) +  (ang:Up() * -5.6)
	ang:RotateAroundAxis(ang:Right(), 0)
	ang:RotateAroundAxis(ang:Up(), 0)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end