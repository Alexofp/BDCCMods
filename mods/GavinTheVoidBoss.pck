GDPC                                                                            	   /   res://Attacks/NpcAttacks/Gavin/DisablingShot.gd      �                      +   res://Attacks/NpcAttacks/Gavin/GavinKick.gd�      5                      ,   res://Attacks/NpcAttacks/Gavin/GavinKnife.gd      M                      ,   res://Attacks/NpcAttacks/Gavin/KneeStrike.gd_                            .   res://Attacks/NpcAttacks/Gavin/MachineSpray.gdf      H                      '   res://Attacks/NpcAttacks/Gavin/Phase.gd�      b                      )   res://Attacks/NpcAttacks/Gavin/TakeAim.gd                             +   res://Attacks/NpcAttacks/Gavin/VitalShot.gd$$      $                         res://Characters/Gavin.gdH)      M                      extends Attack

func _init():
	id = "DisablingShot"
	category = Category.Physical
	aiCategory = AICategory.Offensive
	aiScoreMultiplier = 0.6
	
func getVisibleName(_context = {}):
	return "Disabling shot"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	if(checkMissed(_attacker, _receiver, DamageType.Physical)):
		return genericMissMessage(_attacker, _receiver)
	
	if(checkDodged(_attacker, _receiver, DamageType.Physical)):
		return genericDodgeMessage(_attacker, _receiver)
	
	var text = "{attacker.name} fires a disabling shot, hitting {receiver.name}'s knee and causing excruciating pain."
	if(!_receiver.hasEffect(StatusEffect.Collapsed)):
		if(_receiver.addEffect(StatusEffect.Collapsed)):
			text += " {receiver.name} [b]collapses[/b] after the attack."
			text += "\n\n"
			text += "[say=attacker]"+RNG.pick(["Going somewhere?", "I'll tell the medics to bring a splint.", "Bullets always were better"])+"[/say]"
	
	return {
		text = text,
		pain = RNG.randi_range(30, 50),
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	return true

func getAnticipationText(_attacker, _receiver):
	return "{attacker.name} lines up a shot, aiming for {receiver.name}'s legs."
	
func getAttackSoloAnimation():
	return "firepistol"

func getRequirements():
	return [AttackRequirement.FreeArms, AttackRequirement.FreeHands]

func getRecieverArmorScaling(_attacker, _receiver, _damageType) -> float:
	return 0.3
extends Attack

func _init():
	id = "GavinKick"
	category = Category.Physical
	aiCategory = AICategory.Offensive
	
func getVisibleName(_context = {}):
	return "Strong kick"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	if(checkMissed(_attacker, _receiver, DamageType.Physical)):
		return genericMissMessage(_attacker, _receiver)
	
	if(checkDodged(_attacker, _receiver, DamageType.Physical)):
		return genericDodgeMessage(_attacker, _receiver)
	
	var text = "{attacker.name} kicks {receiver.name} over the head before kicking them back."
	
	if(_receiver.addEffect(StatusEffect.Collapsed)):
		text += " {receiver.name} was thrown back from the force of {attacker.his} kick!"
	return {
		text = text,
		pain = RNG.randi_range(50, 60),
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	return true

func getAnticipationText(_attacker, _receiver):
	return "{attacker.name} brings his leg up like a martial artist, preparing to strike!"

func getRequirements():
	return [AttackRequirement.FreeLegs]
extends Attack

func _init():
	id = "GavinKnife"
	category = Category.Physical
	aiCategory = AICategory.Offensive
	
func getVisibleName(_context = {}):
	return "Shiv"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	if(checkMissed(_attacker, _receiver, DamageType.Physical)):
		return genericMissMessage(_attacker, _receiver)
	
	if(checkDodged(_attacker, _receiver, DamageType.Physical)):
		return genericDodgeMessage(_attacker, _receiver)
	
	var text = "{attacker.name} managed to stab {receiver.name}, causing {receiver.him} to [color=red]bleed[/color]!"
	
	_receiver.addEffect(StatusEffect.Bleeding)
	return {
		text = text,
		pain = RNG.randi_range(20, 30),
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	return true

func getAnticipationText(_attacker, _receiver):
	return "{attacker.name} dashes towards {receiver.name} with his knife, attempting to stab {receiver.name}!"

func getRequirements():
	return [AttackRequirement.FreeArms, AttackRequirement.FreeHands]

func getAttackSoloAnimation():
	return "shiv"
extends Attack

func _init():
	id = "KneeStrike"
	category = Category.Physical
	aiCategory = AICategory.Defensive
	aiScoreMultiplier = 0.6
	
func getVisibleName(_context = {}):
	return "Tactical Strike"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	if(checkMissed(_attacker, _receiver, DamageType.Physical)):
		return genericMissMessage(_attacker, _receiver)
	
	if(checkDodged(_attacker, _receiver, DamageType.Physical)):
		return genericDodgeMessage(_attacker, _receiver)
	
	var text = "{attacker.name} lunges forward, their knee slamming into {receiver.his} gut, inflicting significant pain and making them keel over!"
	if(!_receiver.hasEffect(StatusEffect.Stunned)):
		if(_receiver.addEffect(StatusEffect.Stunned)):
			text += " The sudden attack [b]stunned[/b] {receiver.name}."
			text += "\n\n"
			text += "[say=attacker]"+RNG.pick(["If you need to throw up, don't hit my suit.", "Was hoping to pop an organ.", "Damn, too far left."])+"[/say]"
	
	return {
		text = text,
		pain = RNG.randi_range(10, 20),
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	return true

func getAnticipationText(_attacker, _receiver):
	return "{attacker.name} prepares to strike {receiver.name} with the handle of {attacker.his} weapon!"
	
func getAttackSoloAnimation():
	return "holdpistol"

func getRequirements():
	return [AttackRequirement.FreeArms, AttackRequirement.FreeHands]

#func getRecieverArmorScaling(_attacker, _receiver, _damageType) -> float:
#	return 0.1
extends Attack

func _init():
	id = "MachineSpray"
	category = Category.Physical
	aiCategory = AICategory.Offensive
	aiScoreMultiplier = 1.0
	
func getVisibleName(_context = {}):
	return "Rapid Fire"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	if(checkMissed(_attacker, _receiver, DamageType.Physical)):
		return genericMissMessage(_attacker, _receiver)
	
	if(checkDodged(_attacker, _receiver, DamageType.Physical)):
		return genericDodgeMessage(_attacker, _receiver)
	
	var amountOfShots = RNG.randi_range(1, 5) + RNG.randi_range(1, 5)
	
	var text = "{attacker.name} fires off a rapid succession of rounds with one hand, hitting {receiver.name} "+str(amountOfShots)+" times. Each impact sends jolts of pain through {receiver.his} body."
	
	return {
		text = text,
		pain = amountOfShots * 15,
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	return true

func getAnticipationText(_attacker, _receiver):
	return "{attacker.name} suddenly pulled out a machine pistol! He's about to unleash a barrage of shots toward {receiver.name}!" 

func getAttackSoloAnimation():
	return "firepistol"

func getRequirements():
	return [AttackRequirement.FreeArms, AttackRequirement.FreeHands]

func getRecieverArmorScaling(_attacker, _receiver, _damageType) -> float:
	return 0.2
extends Attack

func _init():
	id = "Phase"
	category = Category.Physical
	aiCategory = AICategory.DefensivePain
	aiScoreMultiplier = 0.5
	
func getVisibleName(_context = {}):
	return "Evasive Maneuver"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	var text = "{attacker.name} seems to be phasing in and out of reality! How is this possible?!"
	
	_attacker.addEffect(StatusEffect.Evading, [2])
	return {
		text = text,
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	if(_attacker.hasEffect(StatusEffect.Evading)):
		return false
	return true

#func getAttackSoloAnimation():
#	return "punch"

func getRequirements():
	return [[AttackRequirement.Stamina, 25]]#[AttackRequirement.FreeArms, AttackRequirement.FreeHands]

func canBeDodgedByPlayer(_attacker, _receiver):
	return false
extends Attack

func _init():
	id = "TakeAim"
	category = Category.Physical
	aiCategory = AICategory.Offensive
	aiScoreMultiplier = 0.7
	
func getVisibleName(_context = {}):
	return "Take Aim"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	var text = "{attacker.name} prepares for the next attack."
	text += "\n\n"
	text += "[say=attacker]"+RNG.pick(["I see you.", "My aim is always steady.", "I've never missed a shot.", "Hope you can dodge!"])+"[/say]"
	
	_attacker.addEffect(StatusEffect.PrimedAttack, [100])
	
	return {
		text = text,
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	if(_attacker.hasEffect(StatusEffect.PrimedAttack)):
		return false
	
	return true

func getAnticipationText(_attacker, _receiver):
	return "{attacker.name} meows." 

func getAttackSoloAnimation():
	return "holdpistol"

func getRequirements():
	return [AttackRequirement.FreeArms, AttackRequirement.FreeHands]

func canBeDodgedByPlayer(_attacker, _receiver):
	return false
extends Attack

func _init():
	id = "VitalShot"
	category = Category.Physical
	aiCategory = AICategory.Offensive
	aiScoreMultiplier = 0.7
	
func getVisibleName(_context = {}):
	return "Energy Blast"
	
func getVisibleDesc(_context = {}):
	return "Shouldn't see this"
	
func _doAttack(_attacker, _receiver, _context = {}):
	if(checkMissed(_attacker, _receiver, DamageType.Physical)):
		return genericMissMessage(_attacker, _receiver)
	
	if(checkDodged(_attacker, _receiver, DamageType.Physical)):
		return genericDodgeMessage(_attacker, _receiver)
	
	var text = "{attacker.name} fires a precise shot from {attacker.his} pistol, hitting {receiver.name} and causing intense pain."
	
	return {
		text = text,
		pain = RNG.randi_range(50, 70),
	}
	
func _canUse(_attacker, _receiver, _context = {}):
	return true

func getAnticipationText(_attacker, _receiver):
	return "{attacker.name} aims his pistol at {reciever.his} vitals, going for a clean kill. This one [b]will[/b] hurt." \
	+ "\n\n"\
	+ "[say=attacker]"+RNG.pick(["I tried to warn you.", "This has gone on long enough."])+"[/say]"

func getAttackSoloAnimation():
	return "firepistol"

func getRequirements():
	return [AttackRequirement.FreeArms, AttackRequirement.FreeHands]

func getRecieverArmorScaling(_attacker, _receiver, _damageType) -> float:
	return 0.1
extends Character

func _init():
	id = "gavin"
	
	npcLevel = 75
	npcBasePain = 900
	npcBaseLust = 999
	npcBaseStamina = 900
	npcCharacterType = CharacterType.Guard
	
	npcArmor = {
		DamageType.Physical: 50,
		DamageType.Lust: 50,
		DamageType.Stamina: 50,
	}
	npcRestraintStrugglePower = 3
	npcBaseRestraintDodgeChanceMult = 1.5
	
	pickedSkin="CunningSkin"
	pickedSkinRColor="d6780a"
	pickedSkinBColor="ffffff"
	pickedSkinGColor="ffffff"
	
	npcSkinData={
	"ears": {"b": Color("ffffffff"),},
	"arms": {"g": Color("ff070707"),},
	"penis": {"g": Color("ffd2160c"),"b": Color("ff8b0000"),},
	"legs": {"g": Color("ff070707"),},
	}
	
	npcLustInterests = {
		InterestTopic.TallyMarks: Interest.ReallyDislikes,
		InterestTopic.Bodywritings: Interest.ReallyDislikes,
		InterestTopic.Gags: Interest.Dislikes,
		InterestTopic.Blindfolds: Interest.SlightlyDislikes,
		InterestTopic.ButtPlugs: Interest.SlightlyDislikes,
		InterestTopic.VaginalPlugs: Interest.KindaLikes,
		InterestTopic.FeminineBody: Interest.Loves,
		InterestTopic.AndroBody: Interest.ReallyLikes,
		InterestTopic.MasculineBody: Interest.SlightlyDislikes,
		InterestTopic.ThickBody: Interest.Hates,
		InterestTopic.AverageMassBody: Interest.Likes,
		InterestTopic.SlimBody: Interest.Loves,
		InterestTopic.ThickButt: Interest.Likes,
		InterestTopic.AverageButt: Interest.ReallyLikes,
		InterestTopic.NoBreasts: Interest.SlightlyDislikes,
		InterestTopic.SmallBreasts: Interest.KindaLikes,
		InterestTopic.MediumBreasts: Interest.ReallyLikes,
		InterestTopic.BigBreasts: Interest.Loves,
		InterestTopic.LactatingBreasts: Interest.Hates,
		InterestTopic.StuffedPussy: Interest.Dislikes,
		InterestTopic.StuffedAss: Interest.Dislikes,
		InterestTopic.StuffedPussyOrAss: Interest.Hates,
		InterestTopic.Pregnant: Interest.Dislikes,
		InterestTopic.StuffedThroat: Interest.Dislikes,
		InterestTopic.CoveredInCum: Interest.ReallyDislikes,
		InterestTopic.CoveredInLotsOfCum: Interest.Hates,
		InterestTopic.FullyNaked: Interest.Loves,
		InterestTopic.ExposedPussy: Interest.Loves,
		InterestTopic.ExposedAnus: Interest.Loves,
		InterestTopic.ExposedBreasts: Interest.Loves,
		InterestTopic.ExposedCock: Interest.Loves,
		InterestTopic.ExposedPanties: Interest.Likes,
		InterestTopic.ExposedBra: Interest.Likes,
		InterestTopic.LooseAnus: Interest.Dislikes,
		InterestTopic.LoosePussy: Interest.Dislikes,
		InterestTopic.TightAnus: Interest.KindaLikes,
		InterestTopic.TightPussy: Interest.ReallyLikes,
		InterestTopic.HasVaginaOnly: Interest.Loves,
		InterestTopic.HasVaginaAndCock: Interest.Likes,
		InterestTopic.BigCock: Interest.Dislikes,
		InterestTopic.AverageCock: Interest.Likes,
		InterestTopic.SmallCock: Interest.ReallyLikes,
	}
	
func _getName():
	return "Gavin Pearson"

func _getGender():
	return Gender.Male

func _getsmalldescription() -> String: 
	return "A tall male fox with cyan eyes, staring you down intensely. He wears very formal clothing. People seem to ignore him."
	
func getSpecies():
	return ["canine"]

func getChatColor():
	return "#00F0FF"

func getThickness() -> int:
	return 50

func getFemininity() -> int:
	return 50

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("caninehead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("baldhair"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("canineears"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthroarms"))
	var breasts = GlobalRegistry.createBodypart("malebreasts")
	breasts.size = 0
	giveBodypartUnlessSame(breasts)
	var penis = GlobalRegistry.createBodypart("caninepenis")
	penis.lengthCM = 22
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	var tail = GlobalRegistry.createBodypart("foxtail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))
	
func getDefaultEquipment():
	return ["OfficialClothes"]

func _getAttacks():
	return ["VitalShot", "KneeStrike", "DisablingShot", "MachineSpray", "TakeAim", "Phase", "GavinKick", "GavinKnife", "BolaThrow", "trygetupattack"]
