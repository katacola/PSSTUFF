ITEM.Name = 'APC'
ITEM.Price = 200
ITEM.Model = 'models/props/de_piranesi/pi_apc.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(0.1, 0)
	pos = pos + (ang:Forward() * -3.441) + (ang:Right() * -0.001) +  (ang:Up() * -0.237)
	ang:RotateAroundAxis(ang:Right(), 0)
	ang:RotateAroundAxis(ang:Up(), 0)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end
