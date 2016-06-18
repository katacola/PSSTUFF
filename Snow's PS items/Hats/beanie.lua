ITEM.Name = 'Beanie'
ITEM.Price = 0
ITEM.Model = 'models/modified/hat04.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1, 0)
	pos = pos + (ang:Forward() * -5.457) + (ang:Right() * -0.185) +  (ang:Up() * 2.719)
	ang:RotateAroundAxis(ang:Right(), 0.3)
	ang:RotateAroundAxis(ang:Up(), 13.7)
	ang:RotateAroundAxis(ang:Forward(), -1.5)
	
	return model, pos, ang
end