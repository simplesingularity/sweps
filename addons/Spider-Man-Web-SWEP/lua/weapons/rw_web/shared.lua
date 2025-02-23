
SWEP.Author			= "Rottweiler"
SWEP.Contact		= ""
SWEP.Purpose		= "Allows you to swing all over the place like!"
SWEP.Instructions	= "Left click to shot web"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.PrintName			= "Spider-Man Web"			
SWEP.Slot				= 0
SWEP.SlotPos			= 0
SWEP.ViewModelFOV		= 65
SWEP.UseHands			= true
SWEP.DrawAmmo			= false
SWEP.DrawCrosshair		= true
SWEP.ViewModel			= "models/weapons/rottweiler/c_spiderman.mdl"
SWEP.WorldModel			= ""

function SWEP:Initialize()

	nextshottime = CurTime()
	self:SetWeaponHoldType( "pistol" )
	self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
	util.PrecacheSound("thwip.wav")
end

function SWEP:Deploy()
	self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
	return true
end

function SWEP:Think()

	if (!self.Owner || self.Owner == NULL) then return end
	
	if ( self.Owner:KeyPressed( IN_ATTACK ) ) then
	
		self:StartAttack()
		
	elseif ( self.Owner:KeyDown( IN_ATTACK ) && inRange ) then
	
		self:UpdateAttack()
		
	elseif ( self.Owner:KeyReleased( IN_ATTACK ) && inRange ) then
	
		self:EndAttack( true )
	
	end
	
	if ( self.Owner:KeyPressed( IN_ATTACK2 ) ) then
	
		self:Attack2()
		
	end

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

function SWEP:StartAttack()
	local gunPos = self.Owner:GetShootPos()
	local disTrace = self.Owner:GetEyeTrace()
	local hitPos = disTrace.HitPos
	
	local x = (gunPos.x - hitPos.x)^2;
	local y = (gunPos.y - hitPos.y)^2;
	local z = (gunPos.z - hitPos.z)^2;
	local distance = math.sqrt(x + y + z);
	
	local distanceCvar = GetConVarNumber("rope_distance")
	inRange = false
	if distance <= distanceCvar then
		inRange = true
	end
	
	if inRange then
		if (SERVER) then
			
			if (!self.Beam) then
				self.Beam = ents.Create( "rw_sent_web" )
				self.Beam:SetPos( self.Owner:GetShootPos() )
				self.Beam:Spawn()
				EmitSound( "thwip.wav", self.Owner:GetPos())
				
				if(math.random(1,2) == 1) then
					self.Weapon:SendWeaponAnim(ACT_VM_HITCENTER) -- do alternative anims
					self.Beam:SetNWInt('attachmentId', 1)
				else
					self.Weapon:SendWeaponAnim(ACT_VM_THROW) 
					self.Beam:SetNWInt('attachmentId', 2)
				end
			
				util.Decal( "GlassBreak", disTrace.HitPos + disTrace.HitNormal, disTrace.HitPos - disTrace.HitNormal, NULL )
			end
			
			self.Beam:SetParent( self.Owner )
			self.Beam:SetOwner( self.Owner )
		
		end
		
		self:DoTrace()
		self.speed = 10000
		self.startTime = CurTime()
		self.endTime = CurTime() + self.speed
		self.dt = -1
		
		if (SERVER && self.Beam) then
			self.Beam:GetTable():SetEndPos( self.Tr.HitPos )
		end
		
		self:UpdateAttack()
		
	else
	end
end

function SWEP:UpdateAttack()

	self.Owner:LagCompensation( true )
	
	if (!endpos) then endpos = self.Tr.HitPos end
	
	if (SERVER && self.Beam) then
		self.Beam:GetTable():SetEndPos( endpos )
	end

	lastpos = endpos
	
	
			if ( self.Tr.Entity:IsValid() ) then
			
					endpos = self.Tr.Entity:GetPos()
					if ( SERVER ) then
					self.Beam:GetTable():SetEndPos( endpos )
					end
			
			end
			
			local vVel = (endpos - self.Owner:GetPos())
			local Distance = endpos:Distance(self.Owner:GetPos())
			
			local et = (self.startTime + (Distance/self.speed))
			if(self.dt != 0) then
				self.dt = (et - CurTime()) / (et - self.startTime)
			end
			if(self.dt < 0) then
				self.dt = 0
			end
			
			if(self.dt == 0) then
			zVel = self.Owner:GetVelocity().z
			vVel = vVel:GetNormalized()*(math.Clamp(Distance,0,7))
				if( SERVER ) then
				local gravity = GetConVarNumber("sv_Gravity")
				vVel:Add(Vector(0,0,(gravity/100)*1.5))
				if(zVel < 0) then
					vVel:Sub(Vector(0,0,zVel/100))
				end
				self.Owner:SetVelocity(vVel)
				end
			end
	
	endpos = nil
	
	self.Owner:LagCompensation( false )
	
end

function SWEP:EndAttack( shutdownsound )
	
	if ( CLIENT ) then return end
	if ( !self.Beam ) then return end
	
	self.Beam:Remove()
	self.Beam = nil
	
	self.Weapon:SendWeaponAnim(ACT_VM_IDLE)
	
end

function SWEP:Attack2()
	--if (CLIENT and not game.SinglePlayer()) then return end
		local CF = self:GetOwner():GetFOV()
		if CF == 90 then
			self:GetOwner():SetFOV(30,.3)
		elseif CF == 30 then
			self:GetOwner():SetFOV(90,.3)
		end
	--end
end

function SWEP:Holster()
	self:EndAttack( false )
	return true
end

function SWEP:OnRemove()
	self:EndAttack( false )
	return true
end


function SWEP:PrimaryAttack()
end

function SWEP:SecondaryAttack()
end