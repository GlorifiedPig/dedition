-- Define module information
-- All module data must be set correctly, skipping keys will result in a error
-- Module data is in JSON format

-- Must be set (case sensitive)
-- If 'folderName' is not set, Liro will completely fail to load!
local folderName = "deditionphysics"
local moduleData = '{"folderName": "' .. folderName .. '", "loadPriority": 5,"author": "GlorifiedPig","description": "The Dedition physics modifications.","website": "https://piggyis.pro/","version": "0.1", "loadPrefixes": {"server": "sv_", "client": "cl_", "shared": "sh_"}}'

-- Register the module - Do not touch
hook.Run("liro.registerModule", moduleData)