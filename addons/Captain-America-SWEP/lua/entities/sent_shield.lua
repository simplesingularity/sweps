AddCSLuaFile()

 
ENT.Base = "base_anim"
 
ENT.PrintName = "Captain america shield thrown"
ENT.Category = "Rottweiler"
ENT.Base = "base_anim"
ENT.Spawnable = true
ENT.AutomaticFrameAdvance = true

Bumped = false

function ENT:Initialize()
	self:SetModel( "models/shield/cashield.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
	self:SetSolid( SOLID_VPHYSICS )
	self:SetMoveCollide(MOVECOLLIDE_FLY_BOUNCE)
end
 
function ENT:Use( activator, caller )
    return
end

function ENT:Think()
	if(not SERVER) then return end
	if(Bumped)then
		self:ReturnHome()
	end
	self:NextThink(CurTime())
end

function ENT:PhysicsCollide( data, phys )
	if ( data.Speed > 120 ) then self:EmitSound( Sound( "physics/metal/metal_box_impact_hard3.wav" ) ) end
	--if ( data.Speed > 50 ) then self:EmitSound( Sound( "Flashbang.Bounce" ) ) end
	local target = phys.HitEntity or data.HitObject:GetEntity()
	
	if(target == self.Owner)then
		self:Remove()
		return true
	end
	
	if (target:IsNPC() or target:IsPlayer()) then
		target:TakeDamage(100, self.Owner, self)
	elseif(target:GetClass() == "prop_physics")then
		target:GetPhysicsObject():ApplyForceCenter((target:GetPos() - self:GetPos()):GetNormal() * 100000)
	end
	
	Bumped = true
	
	return true
end

function ENT:ReturnHome()
	local phys = self:GetPhysicsObject()
	if !(phys && IsValid(phys)) then ent:Remove() return end
	phys:ApplyForceCenter(((self.Owner:GetPos() - self:GetPos()):GetNormal() * 1000) + Vector(0,0,250))
	if(self:GetPos():Distance(self.Owner:GetPos())< 100)then
		self:Remove()
	end
end