ITEM.Name = 'Rubiks Cube'
ITEM.Price = 0
ITEM.Model = 'models/gmod_tower/rubikscube.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(0.575, 0)
	pos = pos + (ang:Forward() * -3.563) + (ang:Right() * 0.054) +  (ang:Up() * 0)
	ang:RotateAroundAxis(ang:Right(), 0)
	ang:RotateAroundAxis(ang:Up(), 0)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end