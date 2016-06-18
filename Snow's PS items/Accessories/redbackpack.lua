ITEM.Name = 'Red Backpack'
ITEM.Price = 0
ITEM.Model = 'models/modified/backpack_1.mdl'
ITEM.Attachment = 'chest'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1, 0)
	pos = pos + (ang:Forward() * -0.73) + (ang:Right() * -0.402) +  (ang:Up() * -5.781)
	ang:RotateAroundAxis(ang:Right(), -5.8)
	ang:RotateAroundAxis(ang:Up(), -6.1)
	ang:RotateAroundAxis(ang:Forward(), -0.1)
	
	return model, pos, ang
end