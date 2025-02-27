
var brains = {
    "hq" : preload("res://scenes/board/logic/ai/brains/hq_brain.gd").new(),
    "barracks" : preload("res://scenes/board/logic/ai/brains/barracks_brain.gd").new(),
    "factory" : preload("res://scenes/board/logic/ai/brains/factory_brain.gd").new(),
    "airfield" : preload("res://scenes/board/logic/ai/brains/airfield_brain.gd").new(),

    "infantry" : preload("res://scenes/board/logic/ai/brains/infantry_brain.gd").new(),
    "tank" : preload("res://scenes/board/logic/ai/brains/tank_brain.gd").new(),
    "heli" : preload("res://scenes/board/logic/ai/brains/heli_brain.gd").new(),
    "mobile_infantry" : preload("res://scenes/board/logic/ai/brains/mobile_infantry_brain.gd").new(),
    "rocket_artillery" : preload("res://scenes/board/logic/ai/brains/rocket_artillery_brain.gd").new(),
    "scout" : preload("res://scenes/board/logic/ai/brains/scout_brain.gd").new(),

    "npc" : preload("res://scenes/board/logic/ai/brains/npc_brain.gd").new(),
    "hero" : preload("res://scenes/board/logic/ai/brains/hero_brain.gd").new()
}

var assigned_brains = {
    "modern_airfield" : self.brains['airfield'],
    "modern_barracks" : self.brains['barracks'],
    "modern_factory" : self.brains['factory'],
    "modern_hq" : self.brains['hq'],
    "steampunk_airfield" : self.brains['airfield'],
    "steampunk_barracks" : self.brains['barracks'],
    "steampunk_factory" : self.brains['factory'],
    "steampunk_hq" : self.brains['hq'],
    "futuristic_airfield" : self.brains['airfield'],
    "futuristic_barracks" : self.brains['barracks'],
    "futuristic_factory" : self.brains['factory'],
    "futuristic_hq" : self.brains['hq'],
    "feudal_airfield" : self.brains['airfield'],
    "feudal_barracks" : self.brains['barracks'],
    "feudal_factory" : self.brains['factory'],
    "feudal_hq" : self.brains['hq'],
}

func get_brain_for_template(template_name):
    if self.assigned_brains.has(template_name):
        return self.assigned_brains[template_name]

    return null

func get_brain_for_unit(unit):
    if self.brains.has(unit.unit_class):
        return self.brains[unit.unit_class]

    return null
