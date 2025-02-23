AddCSLuaFile()

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.PrintName = "Captain America SWEP"
SWEP.Author = "Rottweiler"
SWEP.Category = "Rottweiler"

SWEP.HoldType = "fist"
SWEP.ViewModelFlip = false
SWEP.UseHands = false
SWEP.ViewModel = "models/weapons/rottweiler/captain_shield.mdl"
SWEP.WorldModel = "models/weapons/w_bugbait.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false
--SWEP.ViewModelFOV = 54

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 1
SWEP.Primary.Ammo = "none"

function SWEP:Deploy()
	self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
	return true
end

function SWEP:Initialize()
	self:SetHoldType( "fist" )
	return true
end


function SWEP:UpdateAnim(anim)
	local vm = self:GetOwner():GetViewModel()
	timer.Simple(vm:SequenceDuration() / vm:GetPlaybackRate() , function()
		vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )
	end)
end

function SWEP:PrimaryAttack()
	local vm = self:GetOwner():GetViewModel()
	vm:SendViewModelMatchingSequence( vm:LookupSequence( "block" ) )
	return true
end

function SWEP:SecondaryAttack()

	self.Weapon:SendWeaponAnim( ACT_VM_SECONDARYATTACK )
	self:UpdateAnim("idle")
	timer.Simple(0.4, function()
		self:throw_attack("models/shield/cashield.mdl")
		
	end)
	
	return true
end

function SWEP:throw_attack (model_file)
	local tr = self.Owner:GetEyeTrace()
	--self:EmitSound(ShootSound)
	--elf.BaseClass.ShootEffects(self)
	if (!SERVER) then return end
	self:EmitSound("weapons/slam/throw.wav")
	local ent = ents.Create("sent_shield")
	ent:SetPos(self.Owner:EyePos() + (self.Owner:GetAimVector() * 16))
	ent:SetAngles(self.Owner:EyeAngles() - Angle(0,0,180))
	ent:SetOwner(self:GetOwner())
	ent:Spawn()
	local phys = ent:GetPhysicsObject()
	if !(phys && IsValid(phys)) then ent:Remove() return end
	phys:ApplyForceCenter(self.Owner:GetAimVector():GetNormalized() *  math.pow(tr.HitPos:Length(), 3))
	cleanup.Add(self.Owner, "props", ent)
	undo.Create ("Thrown_SWEP_Entity")
		undo.AddEntity (ent)
		undo.SetPlayer (self.Owner)
	undo.Finish()
end