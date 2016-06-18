ITEM.Name = 'Nightmare Hat'
ITEM.Price = 0
ITEM.Model = 'models/gmod_tower/halloween_nightmarehat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:CanPlayerBuy(ply)
	return os.date("%m") == "10" and true or false, 'It\'s not halloween!'
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1, 0)
	pos = pos + (ang:Forward() * -4.577) + (ang:Right() * 0.214) +  (ang:Up() * 1.279)
	ang:RotateAroundAxis(ang:Right(), 0)
	ang:RotateAroundAxis(ang:Up(), 0)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end