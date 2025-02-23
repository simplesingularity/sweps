
SWEP.Author			= "Rottweiler"
SWEP.Contact		= ""
SWEP.Purpose		= "Allows you to swing all over the place like!"
SWEP.Instructions	= "Left click to shot web"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.PrintName			= "Captain America Shield"			
SWEP.Slot				= 0
SWEP.SlotPos			= 0
SWEP.ViewModelFOV		= 90
SWEP.UseHands			= true
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true
SWEP.ViewModel			= "models/weapons/rottweiler/v_cap.mdl"
SWEP.WorldModel			= ""

SWEP.Deployed = false
SWEP.CanThrow = true

function SWEP:Initialize()
	nextshottime = CurTime()
	self:SetWeaponHoldType( "pistol" )
end

function SWEP:Deploy()
	self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
	return true
end


function SWEP:DoTrace( endpos )
	local trace = {}
		trace.start = self.Owner:GetShootPos()
		trace.endpos = trace.start + (self.Owner:GetAimVector() * 14096)
		if(endpos) then trace.endpos = (endpos - self.Tr.HitNormal * 7) end
		trace.filter = { self.Owner, self.Weapon }
		
	self.Tr = nil
	self.Tr = util.TraceLine( trace )
end

function SWEP:Holster()
	return true
end

function SWEP:OnRemove()
	return true
end


function SWEP:PrimaryAttack()
	if(self.Deployed) then
		if(self.CanThrow)then
			self.CanThrow = !self.CanThrow
			--self:PlayThree(ACT_VM_THROW, ACT_VM_PULLPIN, ACT_VM_FIDGET)
			self.Weapon:ResetSequenceInfo()
			self.Weapon:SendWeaponAnim(ACT_VM_THROW)
		
			timer.Simple(0.4, function()
				self:throw_attack()
				
				--timer.Simple(0.7, function() 
				--	self:PlayTwo(ACT_VM_PULLPIN, ACT_VM_FIDGET)
				--end)
			end)
		end
		
	else
		self:EmitSound("shield/grab.wav")
		self:PlayTwo(ACT_VM_DRAW, ACT_VM_FIDGET)
		
		self.Deployed = true
	end


	return true
end

function SWEP:SecondaryAttack()
	if(self.Deployed)then
		self:EmitSound("shield/stow.wav")
		self:PlayTwo(ACT_VM_HOLSTER, ACT_VM_IDLE)
		self.Deployed = false
	end
	return true
end

function SWEP:PlayTwo(first, sec)
	self.Weapon:SendWeaponAnim(first)
	local vm = self:GetWeaponViewModel()
	local num = self:SelectWeightedSequence(first)
	local dur = self:SequenceDuration(num)
	timer.Simple(dur, function()
		self.Weapon:SendWeaponAnim(sec)
	end)
end

function SWEP:PlayThree(first, sec, third)
	self.Weapon:SendWeaponAnim(first)
	local vm = self:GetWeaponViewModel()
	local num = self:SelectWeightedSequence(first)
	local dur = self:SequenceDuration(num)
	timer.Simple(dur, function()
		self.Weapon:SendWeaponAnim(sec)
		num = self:SelectWeightedSequence(sec)
		dur = self:SequenceDuration(num)
		timer.Simple(dur, function()
			self.Weapon:SendWeaponAnim(third)
		end)
	end)
end

function SWEP:throw_attack ()
	local tr = self.Owner:GetEyeTrace()
	--self:EmitSound(ShootSound)
	--elf.BaseClass.ShootEffects(self)
	if (!SERVER) then return end
	self:EmitSound("shield/throwgrunt1.wav")
	
	local ent = ents.Create("sent_shield_thrown")
	ent:SetPos(self.Owner:EyePos() + (self.Owner:GetAimVector() * 16))
	ent:SetAngles(self.Owner:EyeAngles() - Angle(0,0,0))
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

net.Receive("ca_shield_returned", function(len, ply)
	if(!SERVER)then
		self.CanThrow = true
		LocalPlayer():GetActiveWeapon():PlayTwo(ACT_VM_PULLPIN, ACT_VM_FIDGET)
	else
		--ply:GetWeapon():PlayTwo(ACT_VM_PULLPIN, ACT_VM_FIDGET)
	end
	--ply:ChatPrint("Returned shield")
	--ply:GetWeapon():PlayTwo(ACT_VM_PULLPIN, ACT_VM_FIDGET)
end)