rapidjson = require("rapidjson")

PollInterval = Properties["Poll Interval"].Value
PollTimer = Timer.New()

ReconnectTime = Properties["Reconnect Time"].Value
ConnectTimer = Timer.New()

PirSettings = {"Low", "Medium", "High"}
UltrasonicSettings = {"Low", "Medium", "High", "LowX", "Low2X", "Low3X"}
Controls.PirOccupiedSensitivity.Choices = PirSettings
Controls.PirVacantSensitivity.Choices = PirSettings
Controls.UltrasonicOccupiedSensitivity.Choices = UltrasonicSettings
Controls.UltrasonicVacantSensitivity.Choices = UltrasonicSettings

--[[ #include "helpers.lua" ]]
--[[ #include "CrestronHttpConnection.lua" ]]
--[[ #include "polling.lua" ]]
--[[ #include "eventhandlers.lua" ]]

function Init()
  print("Plugin is starting")
  print(PluginInfo.BuildVersion)
  ClearVariables()
  Connect()
  ConnectTimer:Start(ReconnectTime)
end

Init()