AddCSLuaFile()

SWEP.PrintName = "Nightmares SWEP"
SWEP.Author = "Rottweiler"
SWEP.Instructions = "Give people nightmares"
SWEP.Category = "Rottweiler"

SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = false
SWEP.Primary.Delay = 1
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Delay = 1
SWEP.Secondary.Ammo = "none"

SWEP.Slot = 2
SWEP.SlotPos = 1
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = true

SWEP.ViewModelFOV = 54
SWEP.ViewModel = "models/weapons/rottweiler/nightmares.mdl"
SWEP.WorldModel = ""
SWEP.UseHands = true

SWEP.HitDistance = 40
SWEP.Damage = 0

SWEP.NightmaresSound = Sound("voices/nightmares.wav")

NightmareTexture = Material("rottweiler/nightmare")
NightmareScream = Sound("voices/scream.wav")
NightmareToggle = false
ProcessingNightmare = false

if SERVER then
  util.AddNetworkString( "grap" )
  util.AddNetworkString( "horror" )
end

function SWEP:Think()
  local owner = self:GetOwner()
end

-- function SWEP:Initialize()
  -- self:SetHoldType( "normal" )
  -- self.gra = nil
-- end

function SWEP:Initialize()
	self:SetHoldType("fist")
	return true
end

function SWEP:UpdateNextIdle()
	local vm = self:GetOwner():GetViewModel()
	timer.Simple(vm:SequenceDuration() / vm:GetPlaybackRate() , function()
		self:UpdateAnimation("idle")
	end)
end

function SWEP:UpdateAnimation(anim)
	local vm = self:GetOwner():GetViewModel()
	vm:SendViewModelMatchingSequence( vm:LookupSequence( anim ) )
end

function SWEP:UpdateAnimationAndWait(anim)
	local vm = self:GetOwner():GetViewModel()
	timer.Simple(vm:SequenceDuration() / vm:GetPlaybackRate() , function()
		self:UpdateAnimation(anim)
	end)
end

function SWEP:PrimaryAttack()
	local owner = self:GetOwner()


	
--[[
	Trace 
--]]
	local eyePos = owner:EyePos() + owner:GetRight() * -5
	local eyeDir = owner:GetAimVector()

	local tr = util.TraceLine( {
		start = eyePos,
		endpos = eyePos + eyeDir * 10000,
		--filter= function(e) return true end
		filter = owner
	} )
	
	if(IsValid(tr.Entity))then
		if(tr.Entity:IsNPC())then
			tr.Entity:SetSaveValue("m_vecLastPosition", tr.Entity:GetPos())
			tr.Entity:SetSchedule(SCHED_COWER)
			tr.Entity:FearSound()
			tr.Entity:AddEntityRelationship(owner, D_FR, 13 )
			EmitSound(self.NightmaresSound, tr.Entity:GetPos())
			
		elseif (tr.Entity:IsPlayer())then
			if(SERVER)then
				net.Start("horror")
				net.Send(tr.Entity)
			end

		end
		-- local phys = tr.Entity:GetPhysicsObject()
		-- if(IsValid(phys)) then
			-- phys:ApplyForceCenter((owner:GetAimVector():GetNormalized() * math.pow(tr.HitPos:Length(), 3)))
		-- end
	else 
		return false
	end
	
	self:UpdateAnimation("attack1")
	
	self:EmitSound("WeaponFrag.Throw")
	owner:ViewPunch( Angle( rnda,rndb,rnda ) )
	
	self:EmitSound(self.NightmaresSound)
	
	
	self:UpdateNextIdle()
	
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	self:SetNextSecondaryFire( CurTime() + self.Primary.Delay ) 
	
end

function SWEP:Holster( wep )
  return true
end

function SWEP:SecondaryAttack()
end

function SWEP:Reload()
end

function SWEP:OnRemove()
  self.Owner = self:GetOwner()
end

function SWEP:OnDrop()
  self:Remove()
end

--[[
	Network message works
--]]
if(CLIENT)then
	net.Receive("horror", function(len, ply)
		if(NightmareToggle) then return end
		timer.Simple(3, function()
			if(NightmareToggle) then return end
			NightmareToggle = !NightmareToggle
		end)
	end)
end

--[[ 
	Spooky stuff
--]]
hook.Add("RenderScreenspaceEffects", "LoveYou:RenderScreenspaceEffects", function()
	if (NightmareToggle) then
		
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetMaterial(NightmareTexture)
		surface.DrawTexturedRect(0, 0, ScrW(), ScrH())
		
		if(not ProcessingNightmare) then
			ProcessingNightmare = true
			surface.PlaySound("voices/scream.wav")

			timer.Simple(SoundDuration("voices/scream.wav"), function()
				NightmareToggle = false
				ProcessingNightmare = false
				
			end)
		end
		

		
	end
end )