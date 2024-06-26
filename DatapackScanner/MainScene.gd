extends Control

func clearMessages():
	$VBoxContainer/RichTextLabel.bbcode_text = ""

func addMessage(theStr:String):
	var prefix = ""
	var postfix = ""
	if(theStr.begins_with("ERROR:")):
		prefix = "[color=red]"
		postfix = "[/color]"
		printerr(theStr)
	else:
		print(theStr)
	$VBoxContainer/RichTextLabel.bbcode_text += ("\n" if $VBoxContainer/RichTextLabel.bbcode_text != "" else "")+prefix+theStr+postfix
	

func _ready():
	addMessage("Errors/debug info will be shown here")

func _on_ScanButton_pressed():
	clearMessages()
	$VBoxContainer/TextEdit.text = ""
	
	var allResources = getResourcesInFolderSortedByDate(getDatapacksFolderPath())
	#var allResources = getResourcesInFolderSortedByDate("user://datapacks")
	var allPreviews = getPreviewsInFolder(getDatapackPreviewsFolderPath())
	#print(allPreviews)
	
	var foundPacks = {}
	var datapacksOrdered = []
	var filenameByPackID = {}
	var previewByID = {}
	var lastEditByID = {}
	
	var file = File.new()
	for resourcePath in allResources:
		if(!ResourceLoader.exists(resourcePath)):
			addMessage("ERROR: Bad resource at path '"+resourcePath+"'")
			continue
		
		var newPackResource = ResourceLoader.load(resourcePath)
		#print(newPackResource)
		#if(!(newPackResource is DatapackResource)):
		#	addMessage("ERROR: NOT A DATAPACK resource at path '"+resourcePath+"'")
		#	continue
		
		var newDatapack:Datapack = Datapack.new()
		if(!newDatapack.loadFromResource(newPackResource)):
			addMessage("ERROR: BAD DATAPACK at path '"+resourcePath+"'")
			continue
		
		if(foundPacks.has(newDatapack.id)):
			addMessage("ERROR: FOUND DATAPACK WITH DUPLICATE ID AT '"+resourcePath+"' ID IS '"+newDatapack.id+"'")
			continue
		
		foundPacks[newDatapack.id] = newDatapack
		datapacksOrdered.append(newDatapack.id)
		filenameByPackID[newDatapack.id] = resourcePath
		lastEditByID[newDatapack.id] = file.get_modified_time(resourcePath)
		
		for previewPath in allPreviews:
			if(previewPath.get_file().get_basename().to_lower() == newDatapack.id.to_lower()):
				previewByID[newDatapack.id] = previewPath
				break
				
	
	addMessage("Found "+str(foundPacks.size())+" datapack"+("s" if foundPacks.size() != 1 else ""))
	
	var resultData = {
		datapacks = [],
	}
	
	for datapackID in datapacksOrdered:
		var theDatapack:Datapack = foundPacks[datapackID]
		
		var urlpath:String = filenameByPackID[datapackID]
		urlpath = "datapacks/"+urlpath.get_file()
		
		var newInfo = {
			id = theDatapack.id,
			name = theDatapack.name,
			author = theDatapack.author,
			version = theDatapack.version,
			description = theDatapack.description,
			contains = theDatapack.getContainsString(),
			download = urlpath,
			lastedit = lastEditByID[theDatapack.id],
		}
		
		if(previewByID.has(theDatapack.id)):
			newInfo["preview"] = "datapack_previews/"+previewByID[theDatapack.id].get_file()
		
		resultData["datapacks"].append(newInfo)
	
	$VBoxContainer/TextEdit.text = JSON.print(resultData, "\t")
	

func getDatapacksFolderPath():
	if(OS.has_feature("editor")):
		return ProjectSettings.globalize_path("res://").get_base_dir().get_base_dir().plus_file("datapacks")
	return OS.get_executable_path().get_base_dir().plus_file("datapacks")
	
func getDatapackPreviewsFolderPath():
	if(OS.has_feature("editor")):
		return ProjectSettings.globalize_path("res://").get_base_dir().get_base_dir().plus_file("datapack_previews")
	return OS.get_executable_path().get_base_dir().plus_file("datapack_previews")
	
func getResourcesInFolderSortedByDate(folder: String):
	var allpaths = []
	
	var file = File.new()
	var dir = Directory.new()
	if dir.open(folder) == OK:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if dir.current_is_dir():
				pass
				#print("Found directory: " + file_name)
			else:
				if(file_name.get_extension() in ["res", "tres"]):
					var full_path = folder.plus_file(file_name)
					allpaths.append([full_path, file.get_modified_time(full_path)])
			file_name = dir.get_next()
	else:
		addMessage("ERROR: An error occurred when trying to access the path '"+folder+"'")
		return []
	allpaths.sort_custom(self, "customSavePathComparison")
	
	var result = []
	for sortedSaveData in allpaths:
		result.append(sortedSaveData[0])
	return result
	
func customSavePathComparison(a, b):
	return a[1] > b[1]

func getPreviewsInFolder(folder: String):
	var allpaths = []
	
	var dir = Directory.new()
	if dir.open(folder) == OK:
		dir.list_dir_begin()
		var file_name = dir.get_next()
		while file_name != "":
			if dir.current_is_dir():
				pass
				#print("Found directory: " + file_name)
			else:
				if(file_name.get_extension().to_lower() in ["png", "jpg", "jpeg"]):
					var full_path = folder.plus_file(file_name)
					allpaths.append(full_path)
			file_name = dir.get_next()
	else:
		addMessage("ERROR: An error occurred when trying to access the path '"+folder+"'")
		return []

	return allpaths



func _on_ScanButton2_pressed():
	_on_ScanButton_pressed()
	
	if($VBoxContainer/TextEdit.text == ""):
		return
	
	var file = File.new()
	var error = file.open(OS.get_executable_path().get_base_dir().plus_file("datapacks.json"), File.WRITE)
	if(error != OK):
		addMessage("Unable to write to datapacks.json")
		return
	file.store_string($VBoxContainer/TextEdit.text)
	file.close()
	addMessage("Saved to datapacks.json successfully! Meow!")
	
