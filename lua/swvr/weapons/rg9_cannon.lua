local ENT = {}

DEFINE_BASECLASS("swvr_base_cannon")

ENT.Base = "swvr_base_cannon"

ENT.PrintName = "RG-9 Laser Cannon"
ENT.Author = "Borstel"

ENT.Sound = "rg9_cannon"


function ENT:Initialize()
	BaseClass.Initialize(self)

	self:GetBullet():SetTracer("red_tracer_fx")
end

function ENT:Fire()
	BaseClass.Fire(self)
end

sound.Add({
	name = "rg9_cannon",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = {90, 110},
	sound = "weapons/ywing_shoot.wav"
})

scripted_ents.Register(ENT, "rg9_cannon")
