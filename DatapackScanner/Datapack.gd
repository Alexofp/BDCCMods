extends Reference
class_name Datapack

var id:String = "error"
var name:String = "New pack"
var author:String = "No author"
var version:String = "1.0"

var description:String = "No description provided"

var characters:Dictionary = {}
var skins:Dictionary = {}
var scenes:Dictionary = {}
var flags:Dictionary = {}
var quests:Dictionary = {}

var requiredDatapacks:Array = []
var reqDatapackToName:Dictionary = {}
var requiredMods:Array = []

func loadVar(_data, thekey, defaultValue = null):
	if(_data.has(thekey)):
		return _data[thekey]
	return defaultValue

func loadData(_data):
	#id = loadVar(_data, "id", "error")
	name = loadVar(_data, "name", "No name")
	author = loadVar(_data, "author", "No author")
	version = loadVar(_data, "version", "1.0")
	description = loadVar(_data, "description", "No description found")
	requiredDatapacks = loadVar(_data, "requiredDatapacks", [])
	requiredMods = loadVar(_data, "requiredMods", [])
	reqDatapackToName = loadVar(_data, "reqDatapackToName", {})
	
	characters = loadVar(_data, "characters", {})
	skins = loadVar(_data, "skins", {})
	scenes = loadVar(_data, "scenes", {})
	flags = loadVar(_data, "flags", {})
	quests = loadVar(_data, "quests", {})

	
func getContainsString() -> String:
	var resultDat = []
	if(!characters.empty()):
		resultDat.append(str(characters.size())+" character"+("s" if characters.size() != 1 else ""))
	if(!skins.empty()):
		resultDat.append(str(skins.size())+" skin"+("s" if skins.size() != 1 else ""))
	if(!scenes.empty()):
		resultDat.append(str(scenes.size())+" scene"+("s" if scenes.size() != 1 else ""))
	if(!quests.empty()):
		resultDat.append(str(quests.size())+" quest"+("s" if quests.size() != 1 else ""))
	if(resultDat.size() <= 0):
		return "Contains: Nothing"
	else:
		return "Contains: "+(Util.join(resultDat, ", "))

func loadFromResource(datapack:DatapackResource):
	var datapackversion = datapack.version
	
	if((datapackversion is int) && (datapackversion in [1])):
		id = datapack.id
		
		var theData = datapack.data
		if(theData is Dictionary):
			loadData(theData)
			#for varID in theData:
			#	applyEditVar(varID, theData[varID])
			return true
		return false
	else:
		Log.printerr("Tried to load a datapack with a bad version: "+str(version))
		return false
