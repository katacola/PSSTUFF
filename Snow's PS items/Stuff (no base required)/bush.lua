ITEM.Name = 'A bush'
ITEM.Price = 200
ITEM.Model = 'models/props/de_dust/palm_tree_head_skybox.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(0.325, 0)
	pos = pos + (ang:Forward() * -4.058) + (ang:Right() * 0.007) +  (ang:Up() * 0)
	ang:RotateAroundAxis(ang:Right(), 0)
	ang:RotateAroundAxis(ang:Up(), -150.7)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end
