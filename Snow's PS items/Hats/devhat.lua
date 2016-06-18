ITEM.Name = 'A Big Hat'
ITEM.AllowedUserGroups = { "superadmin", "headadmin", "owner" }
ITEM.Price = 0
ITEM.Model = 'models/captainbigbutt/skeyler/hats/devhat.mdl'
ITEM.Attachment = 'eyes'

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	model:SetModelScale(1, 0)
	pos = pos + (ang:Forward() * -3.085) + (ang:Right() * 0.005) +  (ang:Up() * 2.308)
	ang:RotateAroundAxis(ang:Right(), -13.7)
	ang:RotateAroundAxis(ang:Up(), 0)
	ang:RotateAroundAxis(ang:Forward(), 0)
	
	return model, pos, ang
end