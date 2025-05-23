GDPC                                                                               /   res://Attacks/NpcAttacks/Gavin/DisablingShot.gd�      �                      +   res://Attacks/NpcAttacks/Gavin/GavinKick.gd�      5                      ,   res://Attacks/NpcAttacks/Gavin/GavinKnife.gd�      M                      ,   res://Attacks/NpcAttacks/Gavin/KneeStrike.gd*                            .   res://Attacks/NpcAttacks/Gavin/MachineSpray.gd1      H                      '   res://Attacks/NpcAttacks/Gavin/Phase.gdy!      b                      )   res://Attacks/NpcAttacks/Gavin/TakeAim.gd�$                            +   res://Attacks/NpcAttacks/Gavin/VitalShot.gd�(      $                         res://Characters/Gavin.gd.      �                         res://Characters/Generic/Don.gd�>      v                      !   res://Characters/Generic/Drynn.gdD      s                      #   res://Characters/Generic/Koyyeen.gd�J      �                      !   res://Characters/Generic/Phone.gdZP      T                      *   res://Characters/Generic/PoliceOfficer1.gd�Q      z                      #   res://Characters/Generic/PurpFox.gd(S      �                      (   res://Characters/Generic/Receptionist.gd�X      �                      %   res://Characters/Generic/RiotGuard.gd�^      �                         res://Characters/Whittaker.gd�d                            +   res://Characters/Generic/InmateMaleHuman.gd�k      �                      %   res://Game/World/Floors/BSRTRoom.tscn|m      ��                      "   res://Game/World/Floors/Diner.tscnUE     �                      #   res://Game/World/Floors/Forest.tscnZ�     ��                      (   res://Game/World/Floors/SecurityFloor.gdF�                            *   res://Game/World/Floors/SecurityFloor.tscn\�     �v                      !   res://Game/World/Floors/Town.tscnW     �}                     $   res://Characters/Generic/Dispatch.gd��     ,                      extends Attack

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
		DamageType.Lust: 75,
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
	"hair": {"r": Color("ff090909"),"g": Color("ff1f1f1f"),"b": Color("ff090909"),},
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

func getSmallDescription() -> String:
	return "A tall male fox with glowing cyan eyes. He wears very formal clothing."
	
func getSpecies():
	return ["canine"]

func getChatColor():
	return "#00F0FF"

func getThickness() -> int:
	return 50

func getFemininity() -> int:
	return 0

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("caninehead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("messyhair"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("canineears"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthroarms"))
	var breasts = GlobalRegistry.createBodypart("malebreasts")
	breasts.size = -1
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
	return ["OfficialClothes", "sportyBriefs", "sportyTankTop",]

func _getAttacks():
	return ["VitalShot", "KneeStrike", "DisablingShot", "MachineSpray", "TakeAim", "Phase", "GavinKick", "GavinKnife", "BolaThrow", "trygetupattack"]
extends Character

func _init():
	id = "don"
	disableSerialization = true
	
func _getName():
	return "The Don"

func getGender():
	return Gender.Male
	
func getSmallDescription() -> String:
	return "A tired looking middle-aged golden retriever. Has the look of a teacher who deals with too much shit."

func getSpecies():
	return [Species.Canine]
	
func getChatColor():
	return '#5bb9e2'

func getThickness() -> int:
	return 30

func getFemininity() -> int:
	return 0

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))
	var breasts = GlobalRegistry.createBodypart("malebreasts")
	breasts.size = -1
	giveBodypartUnlessSame(breasts)
	var penis = GlobalRegistry.createBodypart("caninepenis")
	penis.lengthCM = 18
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("bulldogears"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthroarms"))
	var tail = GlobalRegistry.createBodypart("huskytail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("caninehead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("baldhair"))

	pickedSkinRColor="f6d774"
	pickedSkinBColor="f6d774"
	pickedSkinGColor="f6d774"
extends Character

func _init():
	id = "drynn"
	disableSerialization = true
	
func _getName():
	return "Drynn Ma'tak"

func getGender():
	return Gender.Male
	
func getSmallDescription() -> String:
	return "A gruff, glowing dragon with a serious expression. Wears a guard outfit."

func getSpecies():
	return [Species.Dragon]

func getThickness() -> int:
	return 50

func getFemininity() -> int:
	return 0

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("dragonhead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("manehair"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("dragonears2"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("dragonhorns"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("buffarms"))
	var breasts = GlobalRegistry.createBodypart("malebreasts")
	breasts.size = 0
	giveBodypartUnlessSame(breasts)
	var penis = GlobalRegistry.createBodypart("dragonpenis")
	penis.lengthCM = 30
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	var tail = GlobalRegistry.createBodypart("dragontail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))


	pickedSkin="GeometricSkin"
	pickedSkinRColor="792323"
	pickedSkinBColor="792323"
	pickedSkinGColor="b87100"
	npcSkinData={
	"hair": {"r": Color("000000"),"g": Color("b87100"),"b": Color("b87100"),}
	}

func getDefaultEquipment():
	return ["GuardArmor", "sportyTankTop", "sportyBriefs",]

func getChatColor():
	return "#FF6600"
extends Character

func _init():
	id = "koyyeen"
	disableSerialization = true
	
func _getName():
	return "Lyrica Vanillin"

func getGender():
	return Gender.Male
	
func getSmallDescription() -> String:
	return "A casually dressed hyena who smells a lot like coffee."

func getSpecies():
	return [Species.Canine]
	
func getChatColor():
	return '#9c6f44'

func getThickness() -> int:
	return 30

func getFemininity() -> int:
	return 0

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("caninehead"))
	var breasts = GlobalRegistry.createBodypart("malebreasts")
	breasts.size = -1
	giveBodypartUnlessSame(breasts)
	var penis = GlobalRegistry.createBodypart("caninepenis")
	penis.lengthCM = 18
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("simplehair"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("felineears"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("buffarms"))
	var tail = GlobalRegistry.createBodypart("caninetail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	
	pickedSkin="SocketSkin"
	pickedSkinRColor="e5a657"
	pickedSkinBColor="4c393d"
	pickedSkinGColor="4c393d"
	
	npcSkinData={
	"hair": {"r": Color("4c393d"),"g": Color("4c393d"),"b": Color("4c393d"),},
	}
extends Character

func _init():
	id = "phone"
	disableSerialization = true
	
func _getName():
	return "Phone"

func getGender():
	return Gender.Androgynous
	
func getSmallDescription() -> String:
	return "The phone given to you by the police officer."

func getSpecies():
	return [Species.Unknown]
	
func getChatColor():
	return '#65e52c'
extends Character

func _init():
	id = "policeofficer1"
	disableSerialization = true
	
func _getName():
	return "Police Officer"

func getGender():
	return Gender.Male
	
func getSmallDescription() -> String:
	return "A gruff, tall wolf with a scar on his left cheek. Wears a police officer uniform and a high-tech bulletproof vest."

func getSpecies():
	return [Species.Canine]
extends Character

func _init():
	id = "purpfox"
	disableSerialization = true
	
func _getName():
	return "Jacqueline"

func getGender():
	return Gender.Female
	
func getSmallDescription() -> String:
	return "An elegant looking purple fox."

func getSpecies():
	return [Species.Canine]
	
func getChatColor():
	return '#6C3BAA'

func getThickness() -> int:
	return 50

func getFemininity() -> int:
	return 100

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("foxhead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("longhair"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("canineears3"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthroarms"))
	var breasts = GlobalRegistry.createBodypart("humanbreasts")
	breasts.size = 4
	giveBodypartUnlessSame(breasts)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("vagina"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	var tail = GlobalRegistry.createBodypart("foxtail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))

	pickedSkin="CunningSkin"
	pickedSkinRColor="990099"
	pickedSkinBColor="990099"
	pickedSkinGColor="D3D3D3"
	
	npcSkinData={
	"hair": {"r": Color("967bb6"),"g": Color("967bb6"),"b": Color("967bb6"),},
	"arms": {"g": Color("4D004D"),},
	"legs": {"g": Color("4D004D"),},
	}
extends Character

func _init():
	id = "receptionist"
	disableSerialization = true
	
func _getName():
	return "Maja Cortez"

func getGender():
	return Gender.Female
	
func getSmallDescription() -> String:
	return "Elegant-looking feline with beige fur. She wears formal attire."

func getSpecies():
	return [Species.Feline]

func getThickness() -> int:
	return 50

func getFemininity() -> int:
	return 75

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("felinehead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("longhair"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("felineears"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthroarms"))
	var breasts = GlobalRegistry.createBodypart("humanbreasts")
	breasts.size = 5
	giveBodypartUnlessSame(breasts)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("vagina"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	var tail = GlobalRegistry.createBodypart("felinetail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))

	pickedSkin="LynxSkin"
	pickedSkinRColor="c09952"
	pickedSkinBColor="ffffff"
	pickedSkinGColor="ffffff"
	npcSkinData={
	"hair": {"r": Color("000000"),"g": Color("3b0067"),"b": Color("3b0067"),}
	}
func getChatColor():
	return "#50C878"

func getDefaultEquipment():
	return ["OfficialClothes", "LaceBra", "LacePanties",]
extends Character

func _init():
	id = "riotguard"
	disableSerialization = true
	
func _getName():
	return "Elite Guard"

func getGender():
	return Gender.Male
	
func getSmallDescription() -> String:
	return "An Elite Guard wearing heavy armor."

func getSpecies():
	return [Species.Canine]

func getThickness() -> int:
	return 50

func getFemininity() -> int:
	return 0

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("foxhead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("canineears"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthroarms"))
	var breasts = GlobalRegistry.createBodypart("malebreasts")
	breasts.size = -1
	giveBodypartUnlessSame(breasts)
	var penis = GlobalRegistry.createBodypart("caninepenis")
	penis.lengthCM = 18
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("foxtail"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))


	pickedSkin="CunningSkin"
	pickedSkinRColor=Color("ffe07a35")
	pickedSkinGColor=Color("ffe7e7e7")
	pickedSkinBColor=Color("ff512c13")
	npcSkinData={
	"ears": {"b": Color("ffffffff"),},
	"arms": {"g": Color("ff070707"),},
	"penis": {"g": Color("ffd2160c"),"b": Color("ff8b0000"),},
	"legs": {"g": Color("ff070707"),},
	}

func getDefaultEquipment():
	return ["GuardArmorRiot", "GuardHelmetRiot", "plainBriefs",]
extends Character

func _init():
	id = "director"
	
	pickedSkin="LuxeSkin"
	pickedSkinRColor=Color("ff171717")
	pickedSkinGColor=Color("ff353535")
	pickedSkinBColor=Color("490404")
	npcSkinData={
	"hair": {"r": Color("ff171717"),"g": Color("ff353535"),"b": Color("490404"),},
	"penis": {"skin": "Weiny","g": Color("ff1e1900"),"b": Color("ffffb800"),},
	}
	
func _getName():
	return "Mr. Whittaker"

func getGender():
	return Gender.Male
	
func getSmallDescription() -> String:
	return "A wolf with dark fur and a very mean stare."

func getChatColor():
	return "#D8D500"

func getSpecies():
	return ["canine"]

func _getAttacks():
	return ["LuxeIronGrip", "LuxePredatorsRush", "LuxeTauntingSnarl", "LuxeSavageBackhand", "LuxeViciousLunge", "LuxeEnragedSlam", "LuxeBreatheInOut", "trygetupattack"]

func getThickness() -> int:
	return 60

func getFemininity() -> int:
	return 50

func createBodyparts():
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("wolfhead"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("manehair"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("wolfears"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anthrobody"))
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("buffarms"))
	var breasts = GlobalRegistry.createBodypart("malebreasts")
	breasts.size = 0
	giveBodypartUnlessSame(breasts)
	var penis = GlobalRegistry.createBodypart("caninepenis")
	penis.lengthCM = 30
	penis.ballsScale = 1
	giveBodypartUnlessSame(penis)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("anus"))
	var tail = GlobalRegistry.createBodypart("caninetail")
	tail.tailScale = 1
	giveBodypartUnlessSame(tail)
	giveBodypartUnlessSame(GlobalRegistry.createBodypart("digilegs"))

func getDefaultEquipment():
	return ["OfficialClothesRed", "plainBriefs"]
extends Character

func _init():
	id = "inmateMaleHuman"
	disableSerialization = true
	
func _getName():
	return "Male inmate"

func getGender():
	return Gender.Male
	
func getSmallDescription() -> String:
	return "Generic male inmate"

func getSpecies():
	return ["human"]

func getPenisSize():
	return 16.0

func getFluidAmount(fluidSource):
	if(fluidSource == FluidSource.Penis):
		return RNG.randf_range(60.0, 200.0)
		
	return .getFluidAmount(fluidSource)
[gd_scene load_steps=3 format=2]

[ext_resource path="res://Game/World/SubWorld.tscn" type="PackedScene" id=1]
[ext_resource path="res://Game/World/GameRoom.tscn" type="PackedScene" id=2]

[node name="BSRTRoom" instance=ExtResource( 1 )]

[node name="BSRTElevator" parent="." index="0" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
roomName = "High Command Elevator"
roomDescription = "The room you're in is a really fancy elevator, clearly designed to be used by only the highest-ranked personnel of AlphaCorp... yet here you are."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTHall" parent="." index="1" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -64 )
roomName = "BSRT Hall"
roomDescription = "You step into the hall, the walls painted an ominous red. Other than the red color, the hall is blank. Empty. No plants, no posters. Just hallway."
roomColor = 2
gridColor = 7

[node name="BSRTHall2" parent="." index="2" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -128 )
roomName = "BSRT Hall"
roomDescription = "You step into the hall, the walls painted an ominous red. Other than the red color, the hall is blank. Empty. No plants, no posters. Just hallway."
roomColor = 2
gridColor = 7

[node name="BSRTHall3" parent="." index="3" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -192 )
roomName = "BSRT Hall"
roomDescription = "You step into the hall, the walls painted an ominous red. Other than the red color, the hall is blank. Empty. No plants, no posters. Just hallway."
roomColor = 2
gridColor = 7

[node name="BSRTHall4" parent="." index="4" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -256 )
roomName = "BSRT Hall"
roomDescription = "You step into the hall, the walls painted an ominous red. Other than the red color, the hall is blank. Empty. No plants, no posters. Just hallway."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook" parent="." index="5" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -320 )
roomName = "BSRT Overlook - Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations.

There's a ladder in the floor here that allows you to go down to the BSRT Floor."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTOverlook2" parent="." index="6" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook3" parent="." index="7" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -128, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook4" parent="." index="8" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -192, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook5" parent="." index="9" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook6" parent="." index="10" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -384 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook7" parent="." index="11" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -448 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook8" parent="." index="12" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -512 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook9" parent="." index="13" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -576 )
roomName = "BSRT Overlook - Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTOverlook10" parent="." index="14" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -640 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook11" parent="." index="15" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -704 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook12" parent="." index="16" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -768 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook13" parent="." index="17" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook14" parent="." index="18" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -192, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook15" parent="." index="19" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -128, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook16" parent="." index="20" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook17" parent="." index="21" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -832 )
roomName = "BSRT Overlook - Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTOverlook18" parent="." index="22" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook19" parent="." index="23" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 128, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook20" parent="." index="24" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 192, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook21" parent="." index="25" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -832 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook22" parent="." index="26" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -768 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook23" parent="." index="27" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -704 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook24" parent="." index="28" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -640 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook25" parent="." index="29" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -576 )
roomName = "BSRT Overlook - Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTOverlook26" parent="." index="30" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -512 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook27" parent="." index="31" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -448 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook28" parent="." index="32" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -384 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook29" parent="." index="33" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook30" parent="." index="34" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 192, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook31" parent="." index="35" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 128, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BSRTOverlook33" parent="." index="36" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -320 )
roomName = "BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="BlueSpaceRealityTransporter" parent="." index="37" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 0, -576 )
roomName = "The Core"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomSprite = 4
roomColor = 3
gridColor = 5

[node name="BSRTFloor2" parent="." index="38" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -512 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor3" parent="." index="39" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, -512 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor4" parent="." index="40" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -576 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor5" parent="." index="41" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, -640 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor6" parent="." index="42" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -640 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor7" parent="." index="43" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -640 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor8" parent="." index="44" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -576 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor9" parent="." index="45" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -512 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor10" parent="." index="46" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 128, -512 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor11" parent="." index="47" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 128, -448 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor12" parent="." index="48" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -448 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor13" parent="." index="49" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -448 )
roomName = "BSRT Floor - Ladder"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTFloor14" parent="." index="50" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -448 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor15" parent="." index="51" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -128, -448 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor16" parent="." index="52" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -128, -512 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor17" parent="." index="53" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -128, -576 )
roomName = "BSRT Floor - Ladder"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTFloor18" parent="." index="54" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -128, -640 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor19" parent="." index="55" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -128, -704 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor20" parent="." index="56" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -704 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor21" parent="." index="57" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -704 )
roomName = "BSRT Floor - Ladder"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="BSRTFloor22" parent="." index="58" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -704 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor23" parent="." index="59" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 128, -704 )
roomName = "Support Beam"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="BSRTFloor24" parent="." index="60" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 128, -640 )
roomName = "BSRT Floor"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="BSRTFloor26" parent="." index="61" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 128, -576 )
roomName = "BSRT Floor - Ladder"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTHall6" parent="." index="62" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1664, -192 )
roomDescription = "You step into the hall, the walls painted an ominous red. Other than the red color, the hall is blank. Empty. No plants, no posters. Just hallway."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTHall8" parent="." index="63" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1664, -256 )
roomName = "Rubble"
roomDescription = "You step into the hall, the walls painted an ominous red. Other than the red color, the hall is blank. Empty. No plants, no posters. Just hallway."
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTOverlook34" parent="." index="64" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1664, -320 )
roomName = "Destroyed BSRT Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations.

There's a ladder in the floor here that allows you to go down to the BSRT Floor."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook35" parent="." index="65" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1600, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook36" parent="." index="66" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1536, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook37" parent="." index="67" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1472, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook38" parent="." index="68" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
canWest = false
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook39" parent="." index="69" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -384 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook65" parent="." index="70" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, -384 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook67" parent="." index="71" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, -320 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook68" parent="." index="72" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, -256 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook69" parent="." index="73" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, -192 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook70" parent="." index="74" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, -128 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook71" parent="." index="75" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, -64 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook72" parent="." index="76" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, 0 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook73" parent="." index="77" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, 64 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook74" parent="." index="78" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 1344, 128 )
roomName = "Vent"
roomDescription = "An offshoot that provided air into the BSRT room before it's destruction."
roomSprite = 3
roomColor = 6
gridColor = 5

[node name="DestroyedBSRTOverlook40" parent="." index="79" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -448 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook41" parent="." index="80" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -512 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook42" parent="." index="81" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -576 )
roomName = "Damaged BSRT Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook43" parent="." index="82" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -640 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook44" parent="." index="83" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -704 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook45" parent="." index="84" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -768 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook46" parent="." index="85" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1408, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook47" parent="." index="86" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1472, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook48" parent="." index="87" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1536, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook49" parent="." index="88" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1600, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook50" parent="." index="89" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1664, -832 )
roomName = "Damaged BSRT Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook51" parent="." index="90" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1728, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook52" parent="." index="91" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1792, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook53" parent="." index="92" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1856, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook54" parent="." index="93" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -832 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook55" parent="." index="94" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -768 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook56" parent="." index="95" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -704 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook57" parent="." index="96" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -640 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook58" parent="." index="97" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -576 )
roomName = "Destroyed BSRT Ladder"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook59" parent="." index="98" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -512 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook60" parent="." index="99" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -448 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook61" parent="." index="100" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -384 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook62" parent="." index="101" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1920, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook63" parent="." index="102" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1856, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook64" parent="." index="103" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1792, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTOverlook66" parent="." index="104" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1728, -320 )
roomName = "Damaged BSRT Overlook"
roomDescription = "You step out onto the overlook above the BlueSpace Reality Transporter. Scientists and other researchers, along with people in suits, gather along this path, looking down at the machine below and making their last preparations."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor27" parent="." index="105" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1664, -576 )
roomName = "Destroyed BSRT Core"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor28" parent="." index="106" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1664, -512 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor29" parent="." index="107" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1600, -512 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor30" parent="." index="108" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1600, -576 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor31" parent="." index="109" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1600, -640 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor32" parent="." index="110" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1664, -640 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor33" parent="." index="111" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1728, -640 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor34" parent="." index="112" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1728, -576 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor35" parent="." index="113" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1728, -512 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor36" parent="." index="114" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1792, -512 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor37" parent="." index="115" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1792, -448 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor38" parent="." index="116" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1728, -448 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor39" parent="." index="117" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1664, -448 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor40" parent="." index="118" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1600, -448 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor41" parent="." index="119" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1536, -448 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor42" parent="." index="120" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1536, -512 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor43" parent="." index="121" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1536, -576 )
roomName = "Damaged BSRT Ladder"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor44" parent="." index="122" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1536, -640 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor45" parent="." index="123" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1536, -704 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor46" parent="." index="124" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1600, -704 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor47" parent="." index="125" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1664, -704 )
roomName = "Damaged BSRT Ladder"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomSprite = 3
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor48" parent="." index="126" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 1728, -704 )
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
roomColor = 2
gridColor = 7

[node name="DestroyedBSRTFloor49" parent="." index="127" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1792, -704 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor50" parent="." index="128" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1792, -640 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="DestroyedBSRTFloor52" parent="." index="129" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 1792, -576 )
roomName = "Rubble"
roomDescription = "You step close to the machine. The BSRT, the thing you're supposed to help make sure never works. It's giant, and looks like a wormhole device of sorts."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7
[gd_scene load_steps=3 format=2]

[ext_resource path="res://Game/World/SubWorld.tscn" type="PackedScene" id=1]
[ext_resource path="res://Game/World/GameRoom.tscn" type="PackedScene" id=2]

[node name="Diner" instance=ExtResource( 1 )]

[node name="Sidewalk" parent="." index="0" instance=ExtResource( 2 )]
position = Vector2( 640, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk2" parent="." index="1" instance=ExtResource( 2 )]
position = Vector2( 576, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk3" parent="." index="2" instance=ExtResource( 2 )]
position = Vector2( 512, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk4" parent="." index="3" instance=ExtResource( 2 )]
position = Vector2( 448, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk5" parent="." index="4" instance=ExtResource( 2 )]
position = Vector2( 384, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk6" parent="." index="5" instance=ExtResource( 2 )]
position = Vector2( 320, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk7" parent="." index="6" instance=ExtResource( 2 )]
position = Vector2( 256, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk8" parent="." index="7" instance=ExtResource( 2 )]
position = Vector2( 192, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk9" parent="." index="8" instance=ExtResource( 2 )]
position = Vector2( 128, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk10" parent="." index="9" instance=ExtResource( 2 )]
position = Vector2( 64, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk11" parent="." index="10" instance=ExtResource( 2 )]
position = Vector2( 0, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canSouth = false

[node name="Interior" parent="." index="11" instance=ExtResource( 2 )]
position = Vector2( 0, 256 )
roomName = "Diner -Entrance"
roomDescription = "A set of glass doors protects the diner from the outside air, but also keeps you from smelling the food."

[node name="Interior2" parent="." index="12" instance=ExtResource( 2 )]
position = Vector2( 0, 192 )
roomName = "Diner -Entrance"
roomDescription = "A set of glass doors protects the diner from the outside air, but also keeps you from smelling the food."

[node name="Interior3" parent="." index="13" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 0, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly here!"
roomColor = 4

[node name="Interior4" parent="." index="14" instance=ExtResource( 2 )]
position = Vector2( -64, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly. There's someone sitting here!"
roomSprite = 1

[node name="Interior5" parent="." index="15" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( -128, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior6" parent="." index="16" instance=ExtResource( 2 )]
position = Vector2( -192, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly. There's someone sitting here!"
roomSprite = 1

[node name="Interior7" parent="." index="17" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( -256, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior8" parent="." index="18" instance=ExtResource( 2 )]
position = Vector2( -320, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly. There's someone sitting here!"
roomSprite = 1

[node name="Interior9" parent="." index="19" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( -384, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior10" parent="." index="20" instance=ExtResource( 2 )]
position = Vector2( -448, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly. There's someone sitting here!"
roomSprite = 1

[node name="Interior11" parent="." index="21" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( -448, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior12" parent="." index="22" instance=ExtResource( 2 )]
position = Vector2( -384, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."

[node name="Interior40" parent="." index="23" instance=ExtResource( 2 )]
position = Vector2( -320, 0 )
roomName = "Diner - Kitchen/Interior"
roomDescription = "Yeah you probably shouldn't be standing in the door. I don't think the staff will take too kindly to you tresspassing."
gridColor = 2

[node name="Interior41" parent="." index="24" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -320, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior42" parent="." index="25" instance=ExtResource( 2 )]
position = Vector2( -320, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior43" parent="." index="26" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -256, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior44" parent="." index="27" instance=ExtResource( 2 )]
position = Vector2( -192, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior45" parent="." index="28" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -128, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior46" parent="." index="29" instance=ExtResource( 2 )]
position = Vector2( -64, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior47" parent="." index="30" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 0, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior48" parent="." index="31" instance=ExtResource( 2 )]
position = Vector2( 64, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior49" parent="." index="32" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 128, -128 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior50" parent="." index="33" instance=ExtResource( 2 )]
position = Vector2( 128, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior51" parent="." index="34" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 64, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior52" parent="." index="35" instance=ExtResource( 2 )]
position = Vector2( 0, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior53" parent="." index="36" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -64, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior54" parent="." index="37" instance=ExtResource( 2 )]
position = Vector2( -128, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior55" parent="." index="38" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -192, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
roomColor = 8
gridColor = 2

[node name="Interior56" parent="." index="39" instance=ExtResource( 2 )]
position = Vector2( -256, -64 )
roomName = "Kitchen"
roomDescription = "A room where a bunch of food is prepared for the customers of the diner. It smells really good in here."
gridColor = 2

[node name="Interior13" parent="." index="40" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( -320, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior14" parent="." index="41" instance=ExtResource( 2 )]
position = Vector2( -256, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."

[node name="Interior15" parent="." index="42" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( -192, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior16" parent="." index="43" instance=ExtResource( 2 )]
position = Vector2( -128, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."

[node name="Interior17" parent="." index="44" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( -64, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior18" parent="." index="45" instance=ExtResource( 2 )]
position = Vector2( 0, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."

[node name="Interior19" parent="." index="46" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 64, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior20" parent="." index="47" instance=ExtResource( 2 )]
position = Vector2( 128, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."

[node name="Interior21" parent="." index="48" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 192, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior22" parent="." index="49" instance=ExtResource( 2 )]
position = Vector2( 256, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."

[node name="Interior23" parent="." index="50" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 320, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior24" parent="." index="51" instance=ExtResource( 2 )]
position = Vector2( 384, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."

[node name="Interior25" parent="." index="52" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 448, 64 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior26" parent="." index="53" instance=ExtResource( 2 )]
position = Vector2( 448, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly. An empty booth, just for you. You could use the food..."
roomSprite = 2

[node name="Interior27" parent="." index="54" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 384, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior28" parent="." index="55" instance=ExtResource( 2 )]
position = Vector2( 320, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly.

There's someone sitting here!"
roomSprite = 1

[node name="Interior29" parent="." index="56" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 256, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior30" parent="." index="57" instance=ExtResource( 2 )]
position = Vector2( 192, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly. There's someone sitting here!"
roomSprite = 1

[node name="Interior31" parent="." index="58" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 128, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly."
roomColor = 4

[node name="Interior32" parent="." index="59" instance=ExtResource( 2 )]
position = Vector2( 64, 128 )
roomName = "Diner - Interior"
roomDescription = "A rather lively diner with food that is leagues ahead of BDCC. Everyone seems rather friendly. There's someone sitting here!"
roomSprite = 1

[node name="Interior33" parent="." index="60" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 256, 0 )
roomName = "Male's Restroom"
roomDescription = "A restroom for men. Smells horrible in here."
roomSprite = 8
roomColor = 3

[node name="Interior34" parent="." index="61" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 256, -64 )
roomName = "Male's Restroom"
roomDescription = "A restroom for men. Smells horrible in here."
roomColor = 3

[node name="Interior35" parent="." index="62" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 256, -128 )
roomName = "Male's Restroom"
roomDescription = "A restroom for men. Smells horrible in here. There's a vent that should allow you to sneak into the kitchen."
roomSprite = 4
roomColor = 3

[node name="Interior36" parent="." index="63" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 384, 0 )
roomName = "Female's Restroom"
roomSprite = 8
roomColor = 4

[node name="Interior37" parent="." index="64" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 384, -64 )
roomName = "Female's Restroom"
roomColor = 4

[node name="Interior39" parent="." index="65" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.8, 1 )
position = Vector2( 384, -128 )
roomName = "Female's Restroom"
roomDescription = "A restroom for females. Doesn't smell too bad in here. There's a vent that should allow you to sneak into the kitchen."
roomSprite = 4
roomColor = 4

[node name="Sidewalk12" parent="." index="66" instance=ExtResource( 2 )]
position = Vector2( -64, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk13" parent="." index="67" instance=ExtResource( 2 )]
position = Vector2( -128, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk14" parent="." index="68" instance=ExtResource( 2 )]
position = Vector2( -192, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk15" parent="." index="69" instance=ExtResource( 2 )]
position = Vector2( -256, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk16" parent="." index="70" instance=ExtResource( 2 )]
position = Vector2( -320, 320 )
roomName = "Diner - Parking"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff that would massively cut down on labor costs.

You can practically smell the burgers from here...

This is where you parked your Raven produced Long-Range Transporter Reverse Trike, a vehicle that technically originated from before the popularization of AVs, or Aerial Vehicles, for transportation. Some people, like you for instance, still prefer the old-fashioned way of travel. Oddly enough, your variant of the Iconic Reverse Trike was developed after AVs became much more popular. Transporter Trikes still see regular use from companies, although this particular model is pretty rare. Just makes you more appreciative of it.

Besides this bike, it's just you on the long, open roads."
canNorth = false
canSouth = false
roomSprite = 4

[node name="Sidewalk17" parent="." index="71" instance=ExtResource( 2 )]
position = Vector2( -384, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk18" parent="." index="72" instance=ExtResource( 2 )]
position = Vector2( -448, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk19" parent="." index="73" instance=ExtResource( 2 )]
position = Vector2( -512, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Wall23" parent="." index="74" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -512, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall24" parent="." index="75" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -448, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall25" parent="." index="76" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall26" parent="." index="77" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -320, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall27" parent="." index="78" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -256, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall28" parent="." index="79" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -192, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall29" parent="." index="80" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -128, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall30" parent="." index="81" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
roomColor = 7

[node name="Wall69" parent="." index="82" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, 256 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
canSouth = false
roomColor = 7

[node name="Wall31" parent="." index="83" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall70" parent="." index="84" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 256 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
canSouth = false
roomColor = 7

[node name="Wall32" parent="." index="85" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 128, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall33" parent="." index="86" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall34" parent="." index="87" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 256, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall35" parent="." index="88" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall36" parent="." index="89" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 384, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall37" parent="." index="90" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 448, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall38" parent="." index="91" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 512, 192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canSouth = false
roomColor = 7

[node name="Wall39" parent="." index="92" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 512, 128 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall40" parent="." index="93" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 512, 64 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall41" parent="." index="94" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 512, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canEast = false
roomColor = 7

[node name="Wall42" parent="." index="95" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 448, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canSouth = false
roomColor = 7

[node name="Wall43" parent="." index="96" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canEast = false
canSouth = false
roomColor = 7

[node name="Wall58" parent="." index="97" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, -64 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall59" parent="." index="98" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, -128 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall62" parent="." index="99" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall45" parent="." index="100" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 128, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall46" parent="." index="101" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall48" parent="." index="102" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall49" parent="." index="103" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -128, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall50" parent="." index="104" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -192, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall51" parent="." index="105" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -256, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall52" parent="." index="106" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canEast = false
canSouth = false
roomColor = 7

[node name="Wall71" parent="." index="107" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, -64 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall72" parent="." index="108" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, -128 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall73" parent="." index="109" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall74" parent="." index="110" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -320, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall75" parent="." index="111" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -256, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall76" parent="." index="112" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -192, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall77" parent="." index="113" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -128, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall78" parent="." index="114" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall79" parent="." index="115" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 0, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall80" parent="." index="116" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall81" parent="." index="117" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 128, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall53" parent="." index="118" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -448, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall54" parent="." index="119" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -512, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall55" parent="." index="120" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -512, 64 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall56" parent="." index="121" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -512, 128 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall47" parent="." index="122" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall44" parent="." index="123" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, 0 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
canSouth = false
roomColor = 7

[node name="Wall60" parent="." index="124" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, -64 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall61" parent="." index="125" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, -128 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall63" parent="." index="126" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall65" parent="." index="127" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 384, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall66" parent="." index="128" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 448, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Wall67" parent="." index="129" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 448, -128 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall68" parent="." index="130" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 448, -64 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canWest = false
canEast = false
roomColor = 7

[node name="Wall64" parent="." index="131" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 256, -192 )
roomName = "Wall"
roomDescription = "How the fuck are you standing here?"
canNorth = false
canSouth = false
roomColor = 7

[node name="Sidewalk20" parent="." index="132" instance=ExtResource( 2 )]
position = Vector2( -576, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Sidewalk22" parent="." index="133" instance=ExtResource( 2 )]
position = Vector2( -640, 320 )
roomName = "Diner - Sidewalk"
roomDescription = "The exterior sidewalk of the \"Hail Mary Diner,\" one of many diner chains that have somehow survived past the revolutionary development of android-based staff massively cutting down on labor costs.

You can practically smell the burgers from here..."
canNorth = false
canSouth = false

[node name="Road" parent="." index="134" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 384, 448 )
scale = Vector2( 3.25, 3.25 )
roomName = "Parking Lot"
roomDescription = "Hey, Tom Brady, quit cheating the fucking game and do the damn objective."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="Road7" parent="." index="135" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 576, 448 )
scale = Vector2( 3.25, 3.25 )
roomName = "Parking Lot"
roomDescription = "Hey, Tom Brady, quit cheating the fucking game and do the damn objective."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="Road2" parent="." index="136" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, 448 )
scale = Vector2( 3.25, 3.25 )
roomName = "Parking Lot"
roomDescription = "Hey, Tom Brady, quit cheating the fucking game and do the damn objective."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="Road3" parent="." index="137" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 0, 448 )
scale = Vector2( 3.25, 3.25 )
roomName = "Parking Lot"
roomDescription = "Hey, Tom Brady, quit cheating the fucking game and do the damn objective."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="Road4" parent="." index="138" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -192, 448 )
scale = Vector2( 3.25, 3.25 )
roomName = "Parking Lot"
roomDescription = "Hey, Tom Brady, quit cheating the fucking game and do the damn objective."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="Road5" parent="." index="139" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, 448 )
scale = Vector2( 3.25, 3.25 )
roomName = "Parking Lot"
roomDescription = "Hey, Tom Brady, quit cheating the fucking game and do the damn objective."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="Road8" parent="." index="140" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -576, 448 )
scale = Vector2( 3.25, 3.25 )
roomName = "Parking Lot"
roomDescription = "Hey, Tom Brady, quit cheating the fucking game and do the damn objective."
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
[gd_scene load_steps=3 format=2]

[ext_resource path="res://Game/World/SubWorld.tscn" type="PackedScene" id=1]
[ext_resource path="res://Game/World/GameRoom.tscn" type="PackedScene" id=2]

[node name="Forest" instance=ExtResource( 1 )]

[node name="ForestOrigin" parent="." index="0" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest9" parent="." index="1" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest10" parent="." index="2" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest11" parent="." index="3" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest12" parent="." index="4" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest13" parent="." index="5" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest14" parent="." index="6" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest15" parent="." index="7" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest16" parent="." index="8" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest17" parent="." index="9" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canEast = false
roomColor = 1
gridColor = 1

[node name="Forest18" parent="." index="10" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 0, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
canWest = false
canEast = false
roomColor = 7
gridColor = 8

[node name="Road27" parent="." index="11" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road28" parent="." index="12" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 128, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road29" parent="." index="13" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road30" parent="." index="14" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 256, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road31" parent="." index="15" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road32" parent="." index="16" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 384, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road33" parent="." index="17" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 448, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road20" parent="." index="18" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road21" parent="." index="19" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -128, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road22" parent="." index="20" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -192, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road23" parent="." index="21" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -256, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road24" parent="." index="22" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -320, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road25" parent="." index="23" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road26" parent="." index="24" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -448, -640 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road49" parent="." index="25" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 0, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road50" parent="." index="26" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road51" parent="." index="27" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 128, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road52" parent="." index="28" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 192, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road53" parent="." index="29" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 256, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road54" parent="." index="30" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road55" parent="." index="31" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 384, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road56" parent="." index="32" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 448, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road57" parent="." index="33" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -64, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road58" parent="." index="34" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -128, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road59" parent="." index="35" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -192, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road60" parent="." index="36" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -256, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road61" parent="." index="37" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -320, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road62" parent="." index="38" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road63" parent="." index="39" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -448, -768 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 7
gridColor = 8

[node name="Road34" parent="." index="40" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 0, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road35" parent="." index="41" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 64, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road36" parent="." index="42" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 128, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road37" parent="." index="43" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 192, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road38" parent="." index="44" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 256, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road39" parent="." index="45" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 320, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road40" parent="." index="46" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 384, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road41" parent="." index="47" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( 448, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road42" parent="." index="48" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -64, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road43" parent="." index="49" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -128, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road44" parent="." index="50" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -192, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road45" parent="." index="51" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -256, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road46" parent="." index="52" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -320, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road47" parent="." index="53" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -384, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Road48" parent="." index="54" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 0.7, 1 )
position = Vector2( -448, -704 )
roomName = "A Road?"
roomDescription = "You're standing on... a road?"
roomColor = 8
gridColor = 6

[node name="Forest2" parent="." index="55" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest3" parent="." index="56" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest4" parent="." index="57" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 0, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="TheInbetween" parent="." index="58" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 0, 704 )
roomName = "???"
roomDescription = "???"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 7

[node name="Forest5" parent="." index="59" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest6" parent="." index="60" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest7" parent="." index="61" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest8" parent="." index="62" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest19" parent="." index="63" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest20" parent="." index="64" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest21" parent="." index="65" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest22" parent="." index="66" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest23" parent="." index="67" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest24" parent="." index="68" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest25" parent="." index="69" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest26" parent="." index="70" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 64, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest28" parent="." index="71" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest29" parent="." index="72" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest30" parent="." index="73" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest31" parent="." index="74" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest32" parent="." index="75" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest33" parent="." index="76" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest34" parent="." index="77" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest35" parent="." index="78" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest36" parent="." index="79" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest37" parent="." index="80" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest38" parent="." index="81" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 128, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest40" parent="." index="82" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest41" parent="." index="83" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest42" parent="." index="84" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest43" parent="." index="85" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest44" parent="." index="86" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest45" parent="." index="87" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest46" parent="." index="88" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest47" parent="." index="89" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest48" parent="." index="90" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest49" parent="." index="91" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest51" parent="." index="92" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 192, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest52" parent="." index="93" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest53" parent="." index="94" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest54" parent="." index="95" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest55" parent="." index="96" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest56" parent="." index="97" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest57" parent="." index="98" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest58" parent="." index="99" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest59" parent="." index="100" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest60" parent="." index="101" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest61" parent="." index="102" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest63" parent="." index="103" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 256, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest64" parent="." index="104" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest65" parent="." index="105" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest66" parent="." index="106" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest67" parent="." index="107" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest68" parent="." index="108" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest69" parent="." index="109" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest70" parent="." index="110" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest71" parent="." index="111" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest72" parent="." index="112" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest73" parent="." index="113" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest75" parent="." index="114" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 320, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest76" parent="." index="115" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest77" parent="." index="116" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest78" parent="." index="117" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest79" parent="." index="118" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest80" parent="." index="119" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest81" parent="." index="120" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest82" parent="." index="121" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest83" parent="." index="122" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest84" parent="." index="123" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest85" parent="." index="124" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest87" parent="." index="125" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 384, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest88" parent="." index="126" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest89" parent="." index="127" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest90" parent="." index="128" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest91" parent="." index="129" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest92" parent="." index="130" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest93" parent="." index="131" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest94" parent="." index="132" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest95" parent="." index="133" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest96" parent="." index="134" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest97" parent="." index="135" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest99" parent="." index="136" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( 448, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest100" parent="." index="137" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest101" parent="." index="138" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest102" parent="." index="139" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest103" parent="." index="140" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest104" parent="." index="141" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest105" parent="." index="142" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest106" parent="." index="143" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest107" parent="." index="144" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest108" parent="." index="145" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest109" parent="." index="146" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest110" parent="." index="147" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest172" parent="." index="148" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest173" parent="." index="149" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest111" parent="." index="150" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest112" parent="." index="151" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest113" parent="." index="152" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest114" parent="." index="153" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest115" parent="." index="154" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest116" parent="." index="155" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest117" parent="." index="156" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest118" parent="." index="157" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest119" parent="." index="158" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest120" parent="." index="159" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest121" parent="." index="160" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest122" parent="." index="161" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest123" parent="." index="162" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest124" parent="." index="163" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest125" parent="." index="164" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest126" parent="." index="165" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest127" parent="." index="166" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest128" parent="." index="167" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest129" parent="." index="168" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest130" parent="." index="169" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest131" parent="." index="170" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest132" parent="." index="171" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest133" parent="." index="172" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest134" parent="." index="173" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest135" parent="." index="174" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest136" parent="." index="175" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest137" parent="." index="176" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest138" parent="." index="177" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest139" parent="." index="178" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest140" parent="." index="179" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest141" parent="." index="180" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest142" parent="." index="181" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest143" parent="." index="182" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest144" parent="." index="183" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest145" parent="." index="184" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest146" parent="." index="185" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -192, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest147" parent="." index="186" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -256, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest148" parent="." index="187" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest149" parent="." index="188" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest150" parent="." index="189" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest151" parent="." index="190" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest152" parent="." index="191" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest153" parent="." index="192" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest154" parent="." index="193" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest155" parent="." index="194" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest156" parent="." index="195" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest157" parent="." index="196" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest158" parent="." index="197" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -128, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest159" parent="." index="198" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -320, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest160" parent="." index="199" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, 0 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest161" parent="." index="200" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, 64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest162" parent="." index="201" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -64 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest163" parent="." index="202" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -128 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest164" parent="." index="203" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -192 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest165" parent="." index="204" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -256 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest166" parent="." index="205" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -320 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest167" parent="." index="206" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -384 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest168" parent="." index="207" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -448 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest169" parent="." index="208" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -448, -512 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest170" parent="." index="209" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -384, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1

[node name="Forest171" parent="." index="210" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -64, -576 )
roomName = "A Forest?"
roomDescription = "You're in... a forest?"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 1
gridColor = 1
extends SubGameWorld

[gd_scene load_steps=3 format=2]

[ext_resource path="res://Game/World/SubWorld.tscn" type="PackedScene" id=1]
[ext_resource path="res://Game/World/GameRoom.tscn" type="PackedScene" id=2]

[node name="SecurityFloor" instance=ExtResource( 1 )]

[node name="SecurityFloorLobby" parent="." index="0" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
roomName = "Security Floor - Checkpoint"
roomDescription = "You step out of the elevator and out into the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters.

A guard watching the elevator stands between you and the rest of the lobby. Your presence seems to irritate him."
canWest = false
canEast = false
roomSprite = 1
roomColor = 3
gridColor = 2
population = 2

[node name="SecurityFloorLobby2" parent="." index="1" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, 0 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters.

You approach a vending machine labeled; 'AlphaTech.' It seems to have contain various items for leisure, as well as the occaisonal sex toy."
canWest = false
canSouth = false
roomSprite = 6
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorLobby3" parent="." index="2" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -64 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters."
canWest = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorLobby4" parent="." index="3" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -64 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters.

In the center of the lobby is a big statue of AlphaCorp's logo, along with the captain standing in front of it, made entirely out of marble."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorLobby5" parent="." index="4" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -64 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters.

In the center of the lobby is a big statue of AlphaCorp's logo, along with the captain standing in front of it, made entirely out of marble."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorLobby6" parent="." index="5" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, 0 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters."
canEast = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorLobby7" parent="." index="6" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -128 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters."
canWest = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorLobby8" parent="." index="7" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -128 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters.

There is a reception table here with a cute receptionist behind it tapping away at the keyboard in front of them."
canNorth = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorLobby9" parent="." index="8" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -128 )
roomName = "Security Floor - Lobby"
roomDescription = "You roam around the main security floor, where all the off-duty security officers and other AlphaCorp employees reside. The lobby you're in is rather large, with metal walls and marble pillars.

On the walls hang large AlphaCorp banners promoting the employment of security officers, as well as other various encouraging posters."
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall" parent="." index="9" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -192 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canWest = false
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall2" parent="." index="10" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -256 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canWest = false
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall3" parent="." index="11" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best.

There is a sign next to another hall that reads: \"Offices\", with an arrow pointing down it."
canWest = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall10" parent="." index="12" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 128, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging workers to do their best."
canNorth = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall11" parent="." index="13" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 192, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging workers to do their best."
canNorth = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall12" parent="." index="14" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 256, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging workers to do their best."
canNorth = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)" parent="." index="15" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 320, -320 )
roomName = "Security Floor - Office Zone"
roomDescription = "You enter into a large office area where the lower employees of AlphaCorp work at this facility. People like financial advisors, accountants, as well as other white collar workers, do their jobs here, separated from the inmates in complete safety."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)2" parent="." index="16" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 320, -256 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canWest = false
canSouth = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)3" parent="." index="17" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 384, -256 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canEast = false
canSouth = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)4" parent="." index="18" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 384, -320 )
roomName = "Security Floor - Office Zone"
roomDescription = "You enter into a large office area where the lower employees of AlphaCorp work at this facility. People like financial advisors, accountants, as well as other white collar workers, do their jobs here, separated from the inmates in complete safety."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)5" parent="." index="19" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 384, -384 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canNorth = false
canEast = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)6" parent="." index="20" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 320, -384 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canWest = false
canNorth = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)7" parent="." index="21" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 448, -320 )
roomName = "Security Floor - Break Room"
roomDescription = "You enter a room full of exhausted, underpaid white collar workers who stare at you with uncomfortable looks on their faces. They shuffle out of your way as you pass through, not wanting to get your attention."
canNorth = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)8" parent="." index="22" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 512, -320 )
roomName = "Security Floor - Office Zone"
roomDescription = "You enter into a large office area where the lower employees of AlphaCorp work at this facility. People like financial advisors, accountants, as well as other white collar workers, do their jobs here, separated from the inmates in complete safety."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)9" parent="." index="23" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 512, -256 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canEast = false
canSouth = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)10" parent="." index="24" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 576, -256 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canWest = false
canSouth = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)11" parent="." index="25" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 576, -320 )
roomName = "Security Floor - Office Zone"
roomDescription = "You enter into a large office area where the lower employees of AlphaCorp work at this facility. People like financial advisors, accountants, as well as other white collar workers, do their jobs here, separated from the inmates in complete safety."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)14" parent="." index="26" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 640, -320 )
roomName = "Security Floor - Gavin's Office"
roomDescription = "You enter Gavin's office, the wooden door closing quietly behind you as you take in his decor. It was all old fashioned, meant to remind someone of home. Hell it might as well of been a home. On top of having a fancy computer, he has a standing closet, a soft bed, and a few decorations in the form of lavender plants.

The room smelled like cigarette smoke, but that smell was quickly chased away by the smell of lavender plants scattered all around the room, making you feel more at ease in this office."
canNorth = false
canEast = false
canSouth = false
roomSprite = 1
roomColor = 2
population = 2

[node name="SecurityFloorOffice(1)12" parent="." index="27" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 576, -384 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canNorth = false
canEast = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorOffice(1)13" parent="." index="28" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 512, -384 )
roomName = "Security Floor - Office Zone"
roomDescription = "You step into a room and find it full of office cubicles. Various people are working within these cubes. You find an unused computer and try to use it, but fail the facial ID scan. Shame. You could have downloaded some porn or something."
canWest = false
canNorth = false
roomSprite = 5
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall4" parent="." index="29" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best.

There is a sign next to another hall that reads: \"Barracks\", with an arrow pointing down it."
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall13" parent="." index="30" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -384 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canWest = false
canNorth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall14" parent="." index="31" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 0, -384 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best.

There is another hall that is guarded by a tough looking guard in elite gear. There's a sign that reads; \"Restricted Area - High Command Only\""
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall15" parent="." index="32" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( 64, -384 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canNorth = false
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall16" parent="." index="33" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 0, -448 )
roomName = "Restricted Zone"
roomDescription = "A high security zone intended for people of high rank to access. The halls are marked an ominous red."
canWest = false
canNorth = false
canEast = false
roomSprite = 1
roomColor = 3
gridColor = 2

[node name="SecurityFloorHall17" parent="." index="34" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 0, -512 )
roomName = "Restricted Zone"
canWest = false
canEast = false
canSouth = false
roomColor = 3
gridColor = 2

[node name="SecurityFloorHall18" parent="." index="35" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 0, -576 )
roomName = "Restricted Zone"
canWest = false
canEast = false
roomColor = 3
gridColor = 2

[node name="SecurityFloorHall19" parent="." index="36" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 0, -640 )
roomName = "Restricted Zone"
canWest = false
canEast = false
roomColor = 3
gridColor = 2

[node name="SecurityFloorHall20" parent="." index="37" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 0, -704 )
roomName = "Restricted Zone"
canWest = false
canEast = false
roomSprite = 3
roomColor = 3
gridColor = 2

[node name="SecurityFloorHall5" parent="." index="38" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -256 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canWest = false
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall6" parent="." index="39" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -64, -192 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canWest = false
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall7" parent="." index="40" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -128, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canNorth = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall8" parent="." index="41" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -192, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canNorth = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorHall9" parent="." index="42" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -256, -320 )
roomName = "Security Floor Hall"
roomDescription = "A long hallway with metal walls. The occaisonal motivational poster can be found encouraging guards to do their best."
canNorth = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks" parent="." index="43" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -320, -320 )
roomName = "Security Floor - Barracks"
roomDescription = "You enter into the barracks. Immediately, the guards in here stop and stare at you. The thought of a prisoner in the Security Floor, let alone their barracks, was baffling to them. None the less, they don't touch you. Sure, they'll growl at you, shove you if you get too close, but they aren't in much of a hurry to beat you or fuck you."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks2" parent="." index="44" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -320, -256 )
roomName = "Security Floor - Barracks"
roomDescription = "You enter into the barracks. Immediately, the guards in here stop and stare at you. The thought of a prisoner in the Security Floor, let alone their barracks, was baffling to them. None the less, they don't touch you. Sure, they'll growl at you, shove you if you get too close, but they aren't in much of a hurry to beat you or fuck you.

You see a vending machine labeled 'SecMAX'. It seems to contain a bunch of supplies for guards and the like."
canEast = false
canSouth = false
roomSprite = 6
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks3" parent="." index="45" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -384, -256 )
roomName = "Security Floor - Barracks"
roomDescription = "You enter into the barracks. Immediately, the guards in here stop and stare at you. The thought of a prisoner in the Security Floor, let alone their barracks, was baffling to them. None the less, they don't touch you. Sure, they'll growl at you, shove you if you get too close, but they aren't in much of a hurry to beat you or fuck you."
canWest = false
canSouth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks4" parent="." index="46" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -384, -320 )
roomName = "Security Floor - Barracks"
roomDescription = "You enter into the barracks. Immediately, the guards in here stop and stare at you. The thought of a prisoner in the Security Floor, let alone their barracks, was baffling to them. None the less, they don't touch you. Sure, they'll growl at you, shove you if you get too close, but they aren't in much of a hurry to beat you or fuck you."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks7" parent="." index="47" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -448, -320 )
roomName = "Security Floor - Laundry"
roomDescription = "You enter into the barracks' laundry room, finding several naked guards hanging around waiting for their clothes to be done in the wash. The guards stare at you as you pass by, their bodies tense as if waiting to strike."
canNorth = false
canSouth = false
roomSprite = 9
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks8" parent="." index="48" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -512, -320 )
roomName = "Security Floor - Lockers"
roomDescription = "You step onto the cold, smooth tile floors of the locker room. You see various guards changing into and out of their uniforms here, preparing for a shower and whatnot. Like the rest of them, these guards stare at you too."
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks9" parent="." index="49" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -512, -384 )
roomName = "Security Floor - Bathroom"
roomDescription = "It's... a bathroom. A surprisingly normal one. You figured they'd have golden toilets or something but surprisingly enough, they don't. Not sure what you expected here.

You don't really want to use the same toilets the guards probably put their asses on, and get the feeling they feel the same about you."
canNorth = false
canEast = false
roomSprite = 8
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks10" parent="." index="50" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -576, -384 )
roomName = "Showers"
roomDescription = "The air in the showers is very humid as the mists from guards and their showers make it pretty hard to see. The guards don't seem to notice you here, but those that do... seem to be checking you out rather than just plainly staring. You can hear some quiet moaning near one of the showers in the back. Despite your curiousity, you decide to not investigate."
canWest = false
canNorth = false
canEast = false
roomSprite = 7
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks11" parent="." index="51" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -576, -320 )
roomName = "Showers"
roomDescription = "The air in the showers is very humid as the mists from guards and their showers make it pretty hard to see. The guards don't seem to notice you here, but those that do... seem to be checking you out rather than just plainly staring. You can hear some quiet moaning near one of the showers in the back. Despite your curiousity, you decide to not investigate."
canWest = false
roomSprite = 7
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks12" parent="." index="52" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -576, -256 )
roomName = "Showers"
roomDescription = "The air in the showers is very humid as the mists from guards and their showers make it pretty hard to see. The guards don't seem to notice you here, but those that do... seem to be checking you out rather than just plainly staring. You can hear some quiet moaning near one of the showers in the back. Despite your curiousity, you decide to not investigate."
canWest = false
canEast = false
canSouth = false
roomSprite = 7
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks14" parent="." index="53" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -512, -256 )
roomName = "Security Floor - Bathroom"
roomDescription = "It's... a bathroom. A surprisingly normal one. You figured they'd have golden toilets or something but surprisingly enough, they don't. Not sure what you expected here.

You don't really want to use the same toilets the guards probably put their asses on, and get the feeling they feel the same about you."
canEast = false
canSouth = false
roomSprite = 8
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks5" parent="." index="54" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -384, -384 )
roomName = "Security Floor - Barracks"
roomDescription = "You enter into the barracks. Immediately, the guards in here stop and stare at you. The thought of a prisoner in the Security Floor, let alone their barracks, was baffling to them. None the less, they don't touch you. Sure, they'll growl at you, shove you if you get too close, but they aren't in much of a hurry to beat you or fuck you."
canWest = false
canNorth = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorBarracks6" parent="." index="55" instance=ExtResource( 2 )]
self_modulate = Color( 1, 0.6, 0.6, 1 )
position = Vector2( -320, -384 )
roomName = "Security Floor - Barracks"
roomDescription = "You enter into the barracks. Immediately, the guards in here stop and stare at you. The thought of a prisoner in the Security Floor, let alone their barracks, was baffling to them. None the less, they don't touch you. Sure, they'll growl at you, shove you if you get too close, but they aren't in much of a hurry to beat you or fuck you."
canNorth = false
canEast = false
roomColor = 2
gridColor = 3
population = 2

[node name="SecurityFloorElevator1" parent="." index="56" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 0, 64 )
roomDescription = "Spacious elevator that can move people or a huge amount of cargo between floors. Walls are made out of black painted metal, you notice a control panel that has a few buttons. Oddly enough, the floor you're on doesn't have a button."
canWest = false
canEast = false
canSouth = false
roomSprite = 3
roomColor = 3
gridColor = 2
population = 2
[gd_scene load_steps=3 format=2]

[ext_resource path="res://Game/World/SubWorld.tscn" type="PackedScene" id=1]
[ext_resource path="res://Game/World/GameRoom.tscn" type="PackedScene" id=2]

[node name="Town" instance=ExtResource( 1 )]

[node name="TownCore" parent="." index="0" instance=ExtResource( 2 )]
position = Vector2( 64, 1792 )

[node name="TownApartment" parent="." index="1" instance=ExtResource( 2 )]
position = Vector2( 1472, 1216 )
roomName = "Apartment - Entrance"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least.

This is the little entrance you have when coming in. It's where you put stuff like your jacket for when it's raining, or you have to go on a ride. Your helmet and bag are also here, but after you settled in, you didn't have much use for them, so they've kinda been collecting dust."
roomSprite = 3

[node name="TownApartment2" parent="." index="2" instance=ExtResource( 2 )]
position = Vector2( 1472, 1152 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least."

[node name="TownApartment3" parent="." index="3" instance=ExtResource( 2 )]
position = Vector2( 1408, 1152 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least.

Your cramped kitchen. It doesn't see much use, only being used to make instant noodles, coffee, or instant mac-and-cheese. ...hell sometimes you get ballsy and make mac-an-ramen. It's actually... not that bad."
roomSprite = 2

[node name="TownApartment4" parent="." index="4" instance=ExtResource( 2 )]
position = Vector2( 1408, 1088 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least."

[node name="TownApartment5" parent="." index="5" instance=ExtResource( 2 )]
position = Vector2( 1472, 1088 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least."

[node name="TownApartment6" parent="." index="6" instance=ExtResource( 2 )]
position = Vector2( 1472, 1024 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least.

Your computer you bought shortly after getting into town. It's just a crappy laptop, but better than nothing.

It's charging right now."
roomSprite = 5

[node name="TownApartment7" parent="." index="7" instance=ExtResource( 2 )]
position = Vector2( 1408, 1024 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least.

This is your bed. It's not great, but better than the one in the BDCC."
roomSprite = 4

[node name="TownApartment8" parent="." index="8" instance=ExtResource( 2 )]
position = Vector2( 1344, 1088 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least.

Your bathroom. Not much to say about it, but looking in the mirror... it's still you."
roomSprite = 8

[node name="TownApartment10" parent="." index="9" instance=ExtResource( 2 )]
position = Vector2( 1344, 1152 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least.

Your shower. Much better than the showers in the BDCC by a landslide. This one actually gets hot when you want it too. Oh, and it's clean. You prefer it that way."
canWest = false
canEast = false
canSouth = false
roomSprite = 7

[node name="TownApartment9" parent="." index="10" instance=ExtResource( 2 )]
position = Vector2( 1536, 1088 )
roomName = "Apartment"
roomDescription = "Your apartment you've been staying in for the past two weeks. It's rather cramped, with you barely having much room to work with. But it's home... for now at least.

Your laundry room. Fit for your whites and other basic clothing, but stuff like your work clothes must be handled by the laundromat."
roomSprite = 9

[node name="TownSidewalk" parent="." index="11" instance=ExtResource( 2 )]
position = Vector2( -832, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk2" parent="." index="12" instance=ExtResource( 2 )]
position = Vector2( -768, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is an arcade, with bright neon lights that read; \"LASER-BLAZER!\"

The appeal for arcades died out a long time ago, but sometimes you'd venture in here just to check things out. It brings an odd feeling of nostalgia, but you can't figure out why."

[node name="TownSidewalk3" parent="." index="13" instance=ExtResource( 2 )]
position = Vector2( -704, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is an arcade, with bright neon lights that read; \"LASER-BLAZER!\"

The appeal for arcades died out a long time ago, but sometimes you'd venture in here just to check things out. It brings an odd feeling of nostalgia, but you can't figure out why."

[node name="TownSidewalk4" parent="." index="14" instance=ExtResource( 2 )]
position = Vector2( -640, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is an arcade, with bright neon lights that read; \"LASER-BLAZER!\"

The appeal for arcades died out a long time ago, but sometimes you'd venture in here just to check things out. It brings an odd feeling of nostalgia, but you can't figure out why."

[node name="TownSidewalk5" parent="." index="15" instance=ExtResource( 2 )]
position = Vector2( -576, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is an arcade, with bright neon lights that read; \"LASER-BLAZER!\"

The appeal for arcades died out a long time ago, but sometimes you'd venture in here just to check things out. It brings an odd feeling of nostalgia, but you can't figure out why."

[node name="TownSidewalk6" parent="." index="16" instance=ExtResource( 2 )]
position = Vector2( -512, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is an arcade, with bright neon lights that read; \"LASER-BLAZER!\"

The appeal for arcades died out a long time ago, but sometimes you'd venture in here just to check things out. It brings an odd feeling of nostalgia, but you can't figure out why."

[node name="TownSidewalk7" parent="." index="17" instance=ExtResource( 2 )]
position = Vector2( -448, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk8" parent="." index="18" instance=ExtResource( 2 )]
position = Vector2( -384, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk9" parent="." index="19" instance=ExtResource( 2 )]
position = Vector2( -320, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk10" parent="." index="20" instance=ExtResource( 2 )]
position = Vector2( -256, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."
roomSprite = 4

[node name="TownSidewalk11" parent="." index="21" instance=ExtResource( 2 )]
position = Vector2( -192, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk12" parent="." index="22" instance=ExtResource( 2 )]
position = Vector2( -128, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk13" parent="." index="23" instance=ExtResource( 2 )]
position = Vector2( -64, 192 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk14" parent="." index="24" instance=ExtResource( 2 )]
position = Vector2( -64, 256 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk15" parent="." index="25" instance=ExtResource( 2 )]
position = Vector2( -64, 320 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."
roomSprite = 4

[node name="TownSidewalk16" parent="." index="26" instance=ExtResource( 2 )]
position = Vector2( -64, 384 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk17" parent="." index="27" instance=ExtResource( 2 )]
position = Vector2( -64, 448 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the above-ground entrance to the train station. It's meant to help people in the outer-zones, which is where you've been living these past two weeks, into the inner-zones where all the fancy hi-tech stuff is.

You haven't ridden on a train in a long time, and you don't intend to anything soon due to a lack of a train card and money to afford transport. You also can't think of a reason to go to the inner-zones right now."

[node name="TownSidewalk18" parent="." index="28" instance=ExtResource( 2 )]
position = Vector2( -64, 512 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk19" parent="." index="29" instance=ExtResource( 2 )]
position = Vector2( -64, 576 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a public bathhouse. Rather uncommon now, as even the cheapest apartments have heated showers nowadays. You visit this place just to bask in the warmth of a hot tub, even if you have to share it with other people most the time.

...

You think back to the showers in the BDCC, about how they were always so frigid, even on the highest heat. As unpleasant as it was... it did always wake you up.

...

Nah, just let it go."

[node name="TownSidewalk20" parent="." index="30" instance=ExtResource( 2 )]
position = Vector2( -64, 640 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a public bathhouse. Rather uncommon now, as even the cheapest apartments have heated showers nowadays. You visit this place just to bask in the warmth of a hot tub, even if you have to share it with other people most the time.

...

You think back to the showers in the BDCC, about how they were always so frigid, even on the highest heat. As unpleasant as it was... it did always wake you up.

...

Nah, just let it go."

[node name="TownSidewalk21" parent="." index="31" instance=ExtResource( 2 )]
position = Vector2( -64, 704 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a public bathhouse. Rather uncommon now, as even the cheapest apartments have heated showers nowadays. You visit this place just to bask in the warmth of a hot tub, even if you have to share it with other people most the time.

...

You think back to the showers in the BDCC, about how they were always so frigid, even on the highest heat. As unpleasant as it was... it did always wake you up.

...

Nah, just let it go."

[node name="TownSidewalk22" parent="." index="32" instance=ExtResource( 2 )]
position = Vector2( -64, 768 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a public bathhouse. Rather uncommon now, as even the cheapest apartments have heated showers nowadays. You visit this place just to bask in the warmth of a hot tub, even if you have to share it with other people most the time.

...

You think back to the showers in the BDCC, about how they were always so frigid, even on the highest heat. As unpleasant as it was... it did always wake you up.

...

Nah, just let it go."

[node name="TownSidewalk23" parent="." index="33" instance=ExtResource( 2 )]
position = Vector2( -64, 832 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a public bathhouse. Rather uncommon now, as even the cheapest apartments have heated showers nowadays. You visit this place just to bask in the warmth of a hot tub, even if you have to share it with other people most the time.

...

You think back to the showers in the BDCC, about how they were always so frigid, even on the highest heat. As unpleasant as it was... it did always wake you up.

...

Nah, just let it go."

[node name="TownSidewalk24" parent="." index="34" instance=ExtResource( 2 )]
position = Vector2( -64, 896 )
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk25" parent="." index="35" instance=ExtResource( 2 )]
position = Vector2( 192, 896 )
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk26" parent="." index="36" instance=ExtResource( 2 )]
position = Vector2( 192, 832 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There's nothing of importance here. There's a sign on the front that reads; \"Lyrica Vanillin's Maid Cafe.\" Shame it's abandonded. You would have loved to see a fox or something similar in a maid outfit.

...

The thought of a fox reminds you of Gavin, the one back in the BDCC...

...

Nah, just let it go."

[node name="TownSidewalk27" parent="." index="37" instance=ExtResource( 2 )]
position = Vector2( 192, 768 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There's nothing of importance here. There's a sign on the front that reads; \"Lyrica Vanillin's Maid Cafe.\" Shame it's abandonded. You would have loved to see a fox or something similar in a maid outfit.

...

The thought of a fox reminds you of Gavin, the one back in the BDCC...

...

Nah, just let it go."

[node name="TownSidewalk28" parent="." index="38" instance=ExtResource( 2 )]
position = Vector2( 192, 704 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There's nothing of importance here. There's a sign on the front that reads; \"Lyrica Vanillin's Maid Cafe.\" Shame it's abandonded. You would have loved to see a fox or something similar in a maid outfit.

...

The thought of a fox reminds you of Gavin, the one back in the BDCC...

...

Nah, just let it go."

[node name="TownSidewalk29" parent="." index="39" instance=ExtResource( 2 )]
position = Vector2( 192, 640 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There's nothing of importance here. There's a sign on the front that reads; \"Lyrica Vanillin's Maid Cafe.\" Shame it's abandonded. You would have loved to see a fox or something similar in a maid outfit.

...

The thought of a fox reminds you of Gavin, the one back in the BDCC...

...

Nah, just let it go."

[node name="TownSidewalk30" parent="." index="40" instance=ExtResource( 2 )]
position = Vector2( 192, 576 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There's nothing of importance here. There's a sign on the front that reads; \"Lyrica Vanillin's Maid Cafe.\" Shame it's abandonded. You would have loved to see a fox or something similar in a maid outfit.

...

The thought of a fox reminds you of Gavin, the one back in the BDCC...

...

Nah, just let it go."

[node name="TownSidewalk31" parent="." index="41" instance=ExtResource( 2 )]
position = Vector2( 192, 512 )
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk32" parent="." index="42" instance=ExtResource( 2 )]
position = Vector2( 192, 448 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk33" parent="." index="43" instance=ExtResource( 2 )]
position = Vector2( 192, 384 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk34" parent="." index="44" instance=ExtResource( 2 )]
position = Vector2( 192, 320 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk35" parent="." index="45" instance=ExtResource( 2 )]
position = Vector2( 192, 256 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk36" parent="." index="46" instance=ExtResource( 2 )]
position = Vector2( 192, 192 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk37" parent="." index="47" instance=ExtResource( 2 )]
position = Vector2( 256, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk38" parent="." index="48" instance=ExtResource( 2 )]
position = Vector2( 320, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk39" parent="." index="49" instance=ExtResource( 2 )]
position = Vector2( 384, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk40" parent="." index="50" instance=ExtResource( 2 )]
position = Vector2( 448, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk41" parent="." index="51" instance=ExtResource( 2 )]
position = Vector2( 512, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of importance here. There's a sign on an overhang at the front of the building that reads; \"Jerry's Alehouse.\" Something must have happened, as the entire building looks like it was torched."

[node name="TownSidewalk42" parent="." index="52" instance=ExtResource( 2 )]
position = Vector2( 576, 128 )
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk43" parent="." index="53" instance=ExtResource( 2 )]
position = Vector2( 640, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the apartment building you've been staying in for the past two weeks. It's a rather decent place, and it's rather affordable given your financial situation. Sure, you hear moaning through the walls every so often, but it's not as bad as the BDCC was.

...

You think back to your cell. A cold, damp, and dark place. Yet despite that, it was home. You had a bed, several walls, and even people you could share it with.

...

You think back to Rahi and Tavi, about how they're doing... you wonder if they miss you.

...

Nah, just let it go."

[node name="TownSidewalk44" parent="." index="54" instance=ExtResource( 2 )]
position = Vector2( 704, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the apartment building you've been staying in for the past two weeks. It's a rather decent place, and it's rather affordable given your financial situation. Sure, you hear moaning through the walls every so often, but it's not as bad as the BDCC was.

...

You think back to your cell. A cold, damp, and dark place. Yet despite that, it was home. You had a bed, several walls, and even people you could share it with.

...

You think back to Rahi and Tavi, about how they're doing... you wonder if they miss you.

...

Nah, just let it go."

[node name="TownSidewalk45" parent="." index="55" instance=ExtResource( 2 )]
position = Vector2( 768, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the apartment building you've been staying in for the past two weeks. It's a rather decent place, and it's rather affordable given your financial situation. Sure, you hear moaning through the walls every so often, but it's not as bad as the BDCC was.

The door is a creaky and old piece of shit but it gets the job done when it comes to keeping the air out.

...

You think back to your cell. A cold, damp, and dark place. Yet despite that, it was home. You had a bed, several walls, and even people you could share it with.

...

You think back to Rahi and Tavi, about how they're doing... you wonder if they miss you.

...

Nah, just let it go."
roomSprite = 4

[node name="TownSidewalk46" parent="." index="56" instance=ExtResource( 2 )]
position = Vector2( 832, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the apartment building you've been staying in for the past two weeks. It's a rather decent place, and it's rather affordable given your financial situation. Sure, you hear moaning through the walls every so often, but it's not as bad as the BDCC was.

...

You think back to your cell. A cold, damp, and dark place. Yet despite that, it was home. You had a bed, several walls, and even people you could share it with.

...

You think back to Rahi and Tavi, about how they're doing... you wonder if they miss you.

...

Nah, just let it go."

[node name="TownSidewalk47" parent="." index="57" instance=ExtResource( 2 )]
position = Vector2( 896, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is the apartment building you've been staying in for the past two weeks. It's a rather decent place, and it's rather affordable given your financial situation. Sure, you hear moaning through the walls every so often, but it's not as bad as the BDCC was.

...

You think back to your cell. A cold, damp, and dark place. Yet despite that, it was home. You had a bed, several walls, and even people you could share it with.

...

You think back to Rahi and Tavi, about how they're doing... you wonder if they miss you.

...

Nah, just let it go."

[node name="TownSidewalk48" parent="." index="58" instance=ExtResource( 2 )]
position = Vector2( 960, 128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk49" parent="." index="59" instance=ExtResource( 2 )]
position = Vector2( 960, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk50" parent="." index="60" instance=ExtResource( 2 )]
position = Vector2( 896, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of note here. There was a sign that read; \"Billy's Tacklebox\" and it seemed to be a place that sold fishing supplies. You guess that Billy went out of business once he realized that people in the city don't fish."

[node name="TownSidewalk51" parent="." index="61" instance=ExtResource( 2 )]
position = Vector2( 832, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of note here. There was a sign that read; \"Billy's Tacklebox\" and it seemed to be a place that sold fishing supplies. You guess that Billy went out of business once he realized that people in the city don't fish."

[node name="TownSidewalk52" parent="." index="62" instance=ExtResource( 2 )]
position = Vector2( 768, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of note here. There was a sign that read; \"Billy's Tacklebox\" and it seemed to be a place that sold fishing supplies. You guess that Billy went out of business once he realized that people in the city don't fish."

[node name="TownSidewalk53" parent="." index="63" instance=ExtResource( 2 )]
position = Vector2( 704, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of note here. There was a sign that read; \"Billy's Tacklebox\" and it seemed to be a place that sold fishing supplies. You guess that Billy went out of business once he realized that people in the city don't fish."

[node name="TownSidewalk54" parent="." index="64" instance=ExtResource( 2 )]
position = Vector2( 640, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is run-down. There isn't anything of note here. There was a sign that read; \"Billy's Tacklebox\" and it seemed to be a place that sold fishing supplies. You guess that Billy went out of business once he realized that people in the city don't fish."

[node name="TownSidewalk55" parent="." index="65" instance=ExtResource( 2 )]
position = Vector2( 576, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk56" parent="." index="66" instance=ExtResource( 2 )]
position = Vector2( 512, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk57" parent="." index="67" instance=ExtResource( 2 )]
position = Vector2( 448, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk58" parent="." index="68" instance=ExtResource( 2 )]
position = Vector2( 384, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

The entrance, like usual, is brightly lit up. You could eat if you wanted to, but... you're not hungry.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."
roomSprite = 4

[node name="TownSidewalk59" parent="." index="69" instance=ExtResource( 2 )]
position = Vector2( 320, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk60" parent="." index="70" instance=ExtResource( 2 )]
position = Vector2( 256, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk61" parent="." index="71" instance=ExtResource( 2 )]
position = Vector2( 192, -192 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk62" parent="." index="72" instance=ExtResource( 2 )]
position = Vector2( 192, -256 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk63" parent="." index="73" instance=ExtResource( 2 )]
position = Vector2( 192, -320 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk64" parent="." index="74" instance=ExtResource( 2 )]
position = Vector2( 192, -384 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk65" parent="." index="75" instance=ExtResource( 2 )]
position = Vector2( 192, -448 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is part of a local restaurant chain that you frequent. It specializes in burgers and fries, but higher quality than your traditional fast-food joint. Most certainly better than the shit they served back in the BDCC.

...

A brief thought takes you back to the canteen. Rows upon rows of inmates sitting down and chatting, eating, having peace among the eatery...

...

Nah, just let it go."

[node name="TownSidewalk66" parent="." index="76" instance=ExtResource( 2 )]
position = Vector2( 192, -512 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk67" parent="." index="77" instance=ExtResource( 2 )]
position = Vector2( 192, -576 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a police station, and a rather large one at that. Through the windows you can see various officers chatting about various things that you can't hear from here. Oddly enough, they wear very similar outfits to the guards at BDCC.

...

...you wonder how Nova and Risha are doing...?

...

Nah, just let it go."

[node name="TownSidewalk68" parent="." index="78" instance=ExtResource( 2 )]
position = Vector2( 192, -640 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a police station, and a rather large one at that. Through the windows you can see various officers chatting about various things that you can't hear from here. Oddly enough, they wear very similar outfits to the guards at BDCC.

...

...you wonder how Nova and Risha are doing...?

...

Nah, just let it go."

[node name="TownSidewalk69" parent="." index="79" instance=ExtResource( 2 )]
position = Vector2( 192, -704 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a police station, and a rather large one at that. Through the windows you can see various officers chatting about various things that you can't hear from here. Oddly enough, they wear very similar outfits to the guards at BDCC.

...

...you wonder how Nova and Risha are doing...?

...

Nah, just let it go."
roomSprite = 4

[node name="TownSidewalk70" parent="." index="80" instance=ExtResource( 2 )]
position = Vector2( 192, -768 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a police station, and a rather large one at that. Through the windows you can see various officers chatting about various things that you can't hear from here. Oddly enough, they wear very similar outfits to the guards at BDCC.

...

...you wonder how Nova and Risha are doing...?

...

Nah, just let it go."

[node name="TownSidewalk71" parent="." index="81" instance=ExtResource( 2 )]
position = Vector2( 192, -832 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a police station, and a rather large one at that. Through the windows you can see various officers chatting about various things that you can't hear from here. Oddly enough, they wear very similar outfits to the guards at BDCC.

...

...you wonder how Nova and Risha are doing...?

...

Nah, just let it go."

[node name="TownSidewalk72" parent="." index="82" instance=ExtResource( 2 )]
position = Vector2( 192, -896 )
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk73" parent="." index="83" instance=ExtResource( 2 )]
position = Vector2( -64, -896 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk74" parent="." index="84" instance=ExtResource( 2 )]
position = Vector2( -64, -832 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a laundromat you frequently visit to keep your work clothes clean. Fortunately it's rather cheap, otherwise your ass would be more broken than a lot of the inmates back in BDCC.

...

Those were some fun days, weren't they...?

...

Nah, just let it go."

[node name="TownSidewalk75" parent="." index="85" instance=ExtResource( 2 )]
position = Vector2( -64, -768 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a laundromat you frequently visit to keep your work clothes clean. Fortunately it's rather cheap, otherwise your ass would be more broken than a lot of the inmates back in BDCC.

...

Those were some fun days, weren't they...?

...

Nah, just let it go."

[node name="TownSidewalk76" parent="." index="86" instance=ExtResource( 2 )]
position = Vector2( -64, -704 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a laundromat you frequently visit to keep your work clothes clean. Fortunately it's rather cheap, otherwise your ass would be more broke than a lot of the inmates back in BDCC.

...

Those were some fun days, weren't they...?

...

Nah, just let it go."
roomSprite = 4

[node name="TownSidewalk77" parent="." index="87" instance=ExtResource( 2 )]
position = Vector2( -64, -640 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a laundromat you frequently visit to keep your work clothes clean. Fortunately it's rather cheap, otherwise your ass would be more broken than a lot of the inmates back in BDCC.

...

Those were some fun days, weren't they...?

...

Nah, just let it go."

[node name="TownSidewalk78" parent="." index="88" instance=ExtResource( 2 )]
position = Vector2( -64, -576 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a laundromat you frequently visit to keep your work clothes clean. Fortunately it's rather cheap, otherwise your ass would be more broken than a lot of the inmates back in BDCC.

...

Those were some fun days, weren't they...?

...

Nah, just let it go."

[node name="TownSidewalk79" parent="." index="89" instance=ExtResource( 2 )]
position = Vector2( -64, -512 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownSidewalk80" parent="." index="90" instance=ExtResource( 2 )]
position = Vector2( -64, -448 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk81" parent="." index="91" instance=ExtResource( 2 )]
position = Vector2( -64, -384 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk82" parent="." index="92" instance=ExtResource( 2 )]
position = Vector2( -64, -320 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk83" parent="." index="93" instance=ExtResource( 2 )]
position = Vector2( -64, -256 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk84" parent="." index="94" instance=ExtResource( 2 )]
position = Vector2( -64, -192 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk85" parent="." index="95" instance=ExtResource( 2 )]
position = Vector2( -128, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk86" parent="." index="96" instance=ExtResource( 2 )]
position = Vector2( -192, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk87" parent="." index="97" instance=ExtResource( 2 )]
position = Vector2( -256, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

...

Nah, just let it go."

[node name="TownSidewalk88" parent="." index="98" instance=ExtResource( 2 )]
position = Vector2( -320, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk89" parent="." index="99" instance=ExtResource( 2 )]
position = Vector2( -384, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you... actually isn't a building at all. Not yet at least. It's a construction site, something that's been getting worked on since you arrived here. You don't know what it is, but a sign out front seems to indicate it's going to be a clinic.

...

A clinic... You wonder how Eliza is doing...?

Nah, just let it go."

[node name="TownSidewalk90" parent="." index="100" instance=ExtResource( 2 )]
position = Vector2( -448, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownAlley" parent="." index="101" instance=ExtResource( 2 )]
position = Vector2( -448, -192 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley2" parent="." index="102" instance=ExtResource( 2 )]
position = Vector2( -448, -256 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley3" parent="." index="103" instance=ExtResource( 2 )]
position = Vector2( -448, -320 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley4" parent="." index="104" instance=ExtResource( 2 )]
position = Vector2( -448, -384 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley5" parent="." index="105" instance=ExtResource( 2 )]
position = Vector2( -448, -448 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley6" parent="." index="106" instance=ExtResource( 2 )]
position = Vector2( -448, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."
canWest = false
canNorth = false

[node name="TownAlley7" parent="." index="107" instance=ExtResource( 2 )]
position = Vector2( -384, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley8" parent="." index="108" instance=ExtResource( 2 )]
position = Vector2( -320, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley9" parent="." index="109" instance=ExtResource( 2 )]
position = Vector2( -256, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley10" parent="." index="110" instance=ExtResource( 2 )]
position = Vector2( -192, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley11" parent="." index="111" instance=ExtResource( 2 )]
position = Vector2( -128, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that goes behind the construction site. You can't hear or see anyone working there currently, but there are signs that they are, in fact, still working on it."

[node name="TownAlley12" parent="." index="112" instance=ExtResource( 2 )]
position = Vector2( 256, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley13" parent="." index="113" instance=ExtResource( 2 )]
position = Vector2( 320, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley14" parent="." index="114" instance=ExtResource( 2 )]
position = Vector2( 384, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley15" parent="." index="115" instance=ExtResource( 2 )]
position = Vector2( 448, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley16" parent="." index="116" instance=ExtResource( 2 )]
position = Vector2( 512, -512 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley17" parent="." index="117" instance=ExtResource( 2 )]
position = Vector2( 576, -512 )
roomName = "Town - Sidewalk"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."
canNorth = false
canEast = false

[node name="TownAlley18" parent="." index="118" instance=ExtResource( 2 )]
position = Vector2( 576, -448 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley19" parent="." index="119" instance=ExtResource( 2 )]
position = Vector2( 576, -384 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley20" parent="." index="120" instance=ExtResource( 2 )]
position = Vector2( 576, -320 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley21" parent="." index="121" instance=ExtResource( 2 )]
position = Vector2( 576, -256 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley22" parent="." index="122" instance=ExtResource( 2 )]
position = Vector2( 576, -192 )
roomName = "Town - Alleyway"
roomDescription = "An alleyway that runs behind a local restaurant chain. A lot of homeless people hang around back here, hoping to get some scraps when the cook tosses out the excess food for the night."

[node name="TownAlley23" parent="." index="123" instance=ExtResource( 2 )]
position = Vector2( 576, 192 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley24" parent="." index="124" instance=ExtResource( 2 )]
position = Vector2( 576, 256 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley25" parent="." index="125" instance=ExtResource( 2 )]
position = Vector2( 576, 320 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley26" parent="." index="126" instance=ExtResource( 2 )]
position = Vector2( 576, 384 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley27" parent="." index="127" instance=ExtResource( 2 )]
position = Vector2( 576, 448 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley28" parent="." index="128" instance=ExtResource( 2 )]
position = Vector2( 576, 512 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."
canEast = false

[node name="TownAlley45" parent="." index="129" instance=ExtResource( 2 )]
position = Vector2( 576, 576 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."
canWest = false
canEast = false

[node name="TownAlley46" parent="." index="130" instance=ExtResource( 2 )]
position = Vector2( 576, 640 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex.

This is also where you can enter the parking lot to retrieve your Reverse Trike."
canWest = false
canEast = false
roomSprite = 4

[node name="TownAlley47" parent="." index="131" instance=ExtResource( 2 )]
position = Vector2( 576, 704 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."
canWest = false
canEast = false

[node name="TownAlley48" parent="." index="132" instance=ExtResource( 2 )]
position = Vector2( 576, 768 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."
canWest = false
canEast = false

[node name="TownAlley49" parent="." index="133" instance=ExtResource( 2 )]
position = Vector2( 576, 832 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."
canWest = false
canEast = false

[node name="TownAlley29" parent="." index="134" instance=ExtResource( 2 )]
position = Vector2( 512, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley30" parent="." index="135" instance=ExtResource( 2 )]
position = Vector2( 448, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley31" parent="." index="136" instance=ExtResource( 2 )]
position = Vector2( 384, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley32" parent="." index="137" instance=ExtResource( 2 )]
position = Vector2( 320, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley33" parent="." index="138" instance=ExtResource( 2 )]
position = Vector2( 256, 512 )
roomName = "Town - Sidewalk"
roomDescription = "You roam behind one of the many run-down and dilapidated buildings of the city. Despite their dangerousness to the general public, people still go in and out of there for many reasons, whether it be for dealing drugs, having illegal parties, or just looking for adventure. You, fortunately, have better things to do than risk your life looking for a piece of non-existant treasure in a burned down apartment complex."

[node name="TownAlley34" parent="." index="139" instance=ExtResource( 2 )]
position = Vector2( -128, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley35" parent="." index="140" instance=ExtResource( 2 )]
position = Vector2( -192, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley36" parent="." index="141" instance=ExtResource( 2 )]
position = Vector2( -256, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley37" parent="." index="142" instance=ExtResource( 2 )]
position = Vector2( -320, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley38" parent="." index="143" instance=ExtResource( 2 )]
position = Vector2( -384, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley39" parent="." index="144" instance=ExtResource( 2 )]
position = Vector2( -448, 512 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."
canWest = false
canSouth = false

[node name="TownAlley40" parent="." index="145" instance=ExtResource( 2 )]
position = Vector2( -448, 448 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley41" parent="." index="146" instance=ExtResource( 2 )]
position = Vector2( -448, 384 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley42" parent="." index="147" instance=ExtResource( 2 )]
position = Vector2( -448, 320 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley43" parent="." index="148" instance=ExtResource( 2 )]
position = Vector2( -448, 256 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownAlley44" parent="." index="149" instance=ExtResource( 2 )]
position = Vector2( -448, 192 )
roomName = "Town - Alleyway"
roomDescription = "You roam behind the building that leads down into the train station. Even from up here you can feel the trains as they pass below you, shaking the earth at their extreme speeds. It seems train technology has advanced a lot since you were incarcerated."

[node name="TownSidewalk91" parent="." index="150" instance=ExtResource( 2 )]
position = Vector2( -512, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a basic office complex. This is where you've been working for the past two weeks since your arrival into town. 

It's pay is really crappy, the hours are long, and your manager is a total dick... but you'd rather work here than swing a pickaxe all day long in the mines back on BDCC. ...hm? What's this feeling...? Homesickness...?

Nah, couldn't be."

[node name="TownSidewalk92" parent="." index="151" instance=ExtResource( 2 )]
position = Vector2( -576, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a basic office complex. This is where you've been working for the past two weeks since your arrival into town. 

It's pay is really crappy, the hours are long, and your manager is a total dick... but you'd rather work here than swing a pickaxe all day long in the mines back on BDCC. ...hm? What's this feeling...? Homesickness...?

Nah, couldn't be."

[node name="TownSidewalk93" parent="." index="152" instance=ExtResource( 2 )]
position = Vector2( -640, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a basic office complex. This is where you've been working for the past two weeks since your arrival into town. 

It's pay is really crappy, the hours are long, and your manager is a total dick... but you'd rather work here than swing a pickaxe all day long in the mines back on BDCC. ...hm? What's this feeling...? Homesickness...?

Nah, couldn't be."
roomSprite = 4

[node name="TownSidewalk94" parent="." index="153" instance=ExtResource( 2 )]
position = Vector2( -704, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a basic office complex. This is where you've been working for the past two weeks since your arrival into town. 

It's pay is really crappy, the hours are long, and your manager is a total dick... but you'd rather work here than swing a pickaxe all day long in the mines back on BDCC. ...hm? What's this feeling...? Homesickness...?

Nah, couldn't be."

[node name="TownSidewalk95" parent="." index="154" instance=ExtResource( 2 )]
position = Vector2( -768, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough.

The building next to you is a basic office complex. This is where you've been working for the past two weeks since your arrival into town. 

It's pay is really crappy, the hours are long, and your manager is a total dick... but you'd rather work here than swing a pickaxe all day long in the mines back on BDCC. ...hm? What's this feeling...? Homesickness...?

Nah, couldn't be."

[node name="TownSidewalk96" parent="." index="155" instance=ExtResource( 2 )]
position = Vector2( -832, -128 )
roomName = "Town - Sidewalk"
roomDescription = "You walk down the sidewalk, rain pouring down from above and making your body temperature start to drop. Your jacket seems to protect you well enough."

[node name="TownBuilding1" parent="." index="156" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -256, -320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 5

[node name="TownBuilding2" parent="." index="157" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -640, -320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomSprite = 5
roomColor = 7
gridColor = 3

[node name="TownBuilding3" parent="." index="158" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -256, -704 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomSprite = 9
roomColor = 7
gridColor = 4

[node name="TownBuilding4" parent="." index="159" instance=ExtResource( 2 )]
position = Vector2( 384, -320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomSprite = 2
gridColor = 4

[node name="TownBuilding5" parent="." index="160" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( 384, -704 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 3
gridColor = 5

[node name="TownBuilding6" parent="." index="161" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 0.7, 1, 1 )
position = Vector2( -256, 320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomSprite = 3
roomColor = 3
gridColor = 2

[node name="TownBuilding7" parent="." index="162" instance=ExtResource( 2 )]
self_modulate = Color( 0.7, 1, 0.7, 1 )
position = Vector2( -640, 320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomSprite = 6
roomColor = 1
gridColor = 4

[node name="TownBuilding8" parent="." index="163" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 384, 320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 2

[node name="TownBuilding10" parent="." index="164" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 384, 704 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 2

[node name="TownBuilding11" parent="." index="165" instance=ExtResource( 2 )]
position = Vector2( 768, 320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomSprite = 1

[node name="TownBuilding12" parent="." index="166" instance=ExtResource( 2 )]
position = Vector2( -256, 704 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomSprite = 7

[node name="TownBuilding9" parent="." index="167" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 768, -320 )
scale = Vector2( 4.625, 4.625 )
roomName = "Building"
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
gridColor = 2

[node name="TownCrossing" parent="." index="168" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( -64, -128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing2" parent="." index="169" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( -64, -64 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing3" parent="." index="170" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( -64, 0 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing4" parent="." index="171" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( -64, 64 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing5" parent="." index="172" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( -64, 128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing6" parent="." index="173" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 0, 128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing7" parent="." index="174" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 64, 128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing8" parent="." index="175" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 128, 128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing9" parent="." index="176" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 192, 128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing10" parent="." index="177" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 192, 64 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing11" parent="." index="178" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 192, 0 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing12" parent="." index="179" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 192, -64 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing13" parent="." index="180" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 192, -128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing14" parent="." index="181" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 128, -128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing15" parent="." index="182" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 64, -128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownCrossing16" parent="." index="183" instance=ExtResource( 2 )]
self_modulate = Color( 1, 1, 0.7, 1 )
position = Vector2( 0, -128 )
roomName = "Crosswalk"
roomDescription = "A yellow-striped path going across the road, allowing you to safely cross the road without getting run over."
roomColor = 6
gridColor = 5

[node name="TownRoad2" parent="." index="184" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 0 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad15" parent="." index="185" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -256 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad16" parent="." index="186" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -448 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad17" parent="." index="187" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -640 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad18" parent="." index="188" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, -832 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad11" parent="." index="189" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 256 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad12" parent="." index="190" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 448 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad13" parent="." index="191" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 640 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad14" parent="." index="192" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 64, 832 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad19" parent="." index="193" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 768, 640 )
scale = Vector2( 4.625, 4.625 )
roomColor = 7

[node name="TownRoad7" parent="." index="194" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 320, 0 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad8" parent="." index="195" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 512, 0 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad9" parent="." index="196" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 704, 0 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad10" parent="." index="197" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( 896, 0 )
scale = Vector2( 3.25, 3.25 )
roomColor = 7

[node name="TownRoad" parent="." index="198" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -192, 0 )
scale = Vector2( 3.125, 3.125 )
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="TownRoad3" parent="." index="199" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -384, 0 )
scale = Vector2( 3.125, 3.125 )
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="TownRoad4" parent="." index="200" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -576, 0 )
scale = Vector2( 3.125, 3.125 )
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7

[node name="TownRoad5" parent="." index="201" instance=ExtResource( 2 )]
self_modulate = Color( 0.5, 0.5, 0.5, 1 )
position = Vector2( -768, 0 )
scale = Vector2( 3.125, 3.125 )
canWest = false
canNorth = false
canEast = false
canSouth = false
roomColor = 7
extends Character

func _init():
	id = "dispatch"
	disableSerialization = true
	
func _getName():
	return "Dispatch"

func getGender():
	return Gender.Female
	
func getSmallDescription() -> String:
	return "A woman who is typically heard over the radio."

func getSpecies():
	return [Species.Feline]
