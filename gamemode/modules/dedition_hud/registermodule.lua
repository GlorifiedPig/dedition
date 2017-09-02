-- Define module information
-- All module data must be set correctly, skipping keys will result in a error
-- Module data is in JSON format

-- Must be set (case sensitive)
-- If 'folderName' is not set, Liro will completely fail to load!
local folderName = "dedition_hud"
local moduleData = '{"folderName": "' .. folderName .. '", "loadPriority": 5,"author": "GlorifiedPig","description": "The Dedition heads up display.","website": "https://piggyis.pro/","version": "0.1"}'

-- Register the module - Do not touch
hook.Run("liro.registerModule", moduleData)
