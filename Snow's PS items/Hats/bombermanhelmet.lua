ITEM.Name = 'Bomber Helmet'
ITEM.Price = 0
ITEM.Model = 'models/gmod_tower/bombermanhelmet.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1, 0)
	pos = pos + (ang:Forward() * -2.365) + (ang:Right() * 0) +  (ang:Up() * -0.702)
	ang:RotateAroundAxis(ang:Right(), 0)
	ang:RotateAroundAxis(ang:Up(), 0)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end