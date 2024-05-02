/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// button name, text, type
invis_tooltip000 = new tooltip("invisDictionary", "dictionary","tooltip");
// Te form
invis_tooltip001 = new tooltip("invisTeForm", "te_from","tooltip");
// polite
invis_tooltip002 = new tooltip("invisPolite","polite","tooltip");
// plain
invis_tooltip003 = new tooltip("invisPlain","plain","tooltip");
// present tense
invis_tooltip004 = new tooltip("invisPresent","present","tooltip");
//present negative
invis_tooltip005 = new tooltip("invisPresNeg","pres_neg","tooltip");
// past tense
invis_tooltip006 = new tooltip("invisPast","past","tooltip");
// past negative		
invis_tooltip007 = new tooltip("invisPastNeg","past_neg","tooltip");
// past negative		
invis_tooltip008 = new tooltip("invisStem","past_neg","tooltip");

invis_tooltip009 = new tooltip("invisibleButton","past_neg","tooltip");

// override the builtin tooltips 
// is this a good idea, it should just be a local variable

_tooltips = [
invis_tooltip000,
invis_tooltip001,
invis_tooltip002,
invis_tooltip003,
invis_tooltip004,
invis_tooltip005,
invis_tooltip006,
invis_tooltip007,
invis_tooltip008,
invis_tooltip009
]

//layer_ID = self.layerID;