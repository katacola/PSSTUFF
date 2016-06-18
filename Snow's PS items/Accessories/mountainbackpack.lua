ITEM.Name = 'Mountain Backpack'
ITEM.Price = 0
ITEM.Model = 'models/modified/backpack_2.mdl'
ITEM.Attachment = 'chest'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(0.925, 0)
	pos = pos + (ang:Forward() * -1.931) + (ang:Right() * 0.003) +  (ang:Up() * -4.623)
	ang:RotateAroundAxis(ang:Right(), 0)
	ang:RotateAroundAxis(ang:Up(), 0)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end