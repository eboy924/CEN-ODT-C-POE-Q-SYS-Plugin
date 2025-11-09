-- table.insert(ctrls,{Name = "code",ControlType = "Text",PinStyle = "Input",Count = 1})

-- Connection
table.insert(ctrls,
{
  Name = "Status",
  ControlType = "Indicator",
  IndicatorType = Reflect and "StatusGP" or "Status",
  PinStyle = "Output",
  UserPin = true,
  Description = "Connection Status"
})
table.insert(ctrls,
{
  Name = "IPAddress",
  ControlType = "Text",
  PinStyle = "Both",
  UserPin = true,
  Description = "IP Address of the Sensor"
})
table.insert(ctrls,
{
  Name = "Username",
  ControlType = "Text", 
  PinStyle = "Both",
  UserPin = true,
  Description = "Username for the Sensor"
})
table.insert(ctrls,
{
  Name = "Password",
  ControlType = "Text",
  PinStyle = "Both",
  UserPin = true,
  Description = "Password for the Sensor"
})

-- Device Info
table.insert(ctrls,
{
  Name = "DeviceName", -- Hostname
  ControlType = "Indicator",
  IndicatorType = "Text",
  PinStyle = "Output",
  UserPin = true,
  Description = "Device Hostname"
})
table.insert(ctrls,
{
  Name = "DeviceFirmware", -- SW Version
  ControlType = "Indicator",
  IndicatorType = "Text",
  PinStyle = "Output",
  UserPin = true,
  Description = "Device Firmware Version"
})
table.insert(ctrls,
{
  Name = "SerialNumber",
  ControlType = "Indicator",
  IndicatorType = "Text",
  PinStyle = "Output",
  UserPin = true,
  Description = "Device Serial Number"
})
table.insert(ctrls,
{
  Name = "MACAddress",
  ControlType = "Indicator",
  IndicatorType = "Text",
  PinStyle = "Output",
  UserPin = true,
  Description = "Device MAC Address"
})

-- Occupancy
table.insert(ctrls,
{
  Name = "Occupied",
  ControlType = "Indicator",
  IndicatorType = "Led",
  PinStyle = "Output",
  UserPin = true,
  Description = "Occupancy State"
})
table.insert(ctrls,
{
  Name = "GraceOccupancy",
  ControlType = "Indicator",
  IndicatorType = "Led",
  PinStyle = "Output",
  UserPin = true,
  Description = "Grace Occupancy State"
})
table.insert(ctrls,
{
  Name = "RawOccupancy",
  ControlType = "Indicator",
  IndicatorType = "Led",
  PinStyle = "Output",
  UserPin = true,
  Description = "Raw Occupancy State"
})
table.insert(ctrls,
{
  Name = "RawPir",
  ControlType = "Indicator",
  IndicatorType = "Led",
  PinStyle = "Output",
  UserPin = true,
  Description = "Raw PIR State"
})
table.insert(ctrls,
{
  Name = "RawUltrasonic",
  ControlType = "Indicator",
  IndicatorType = "Led",
  PinStyle = "Output",
  UserPin = true,
  Description = "Raw Ultrasonic State"
})
table.insert(ctrls,
{
  Name = "OccupancyTimeout",
  ControlType = "Knob",
  ControlUnit = "Seconds",
  Min = 5,
  Max = 1800,
  DefaultValue = 300,
  PinStyle = "Both",
  UserPin = true,
  Description = "Occupancy Timeout in Seconds"
})
table.insert(ctrls,
{
  Name = "ShortTimeout",
  ControlType = "Button",
  ButtonType = "Toggle",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = true,
  Description = "Short Timeout Mode"
})
table.insert(ctrls,
{
  Name = "SingleSensorDeterminingOccupancy",
  ControlType = "Button",
  ButtonType = "Toggle",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = false,
  Description = "Single Sensor Determining Occupancy"
})
table.insert(ctrls,
{
  Name = "SingleSensorDeterminingVacancy",
  ControlType = "Button",
  ButtonType = "Toggle",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = false,
  Description = "Single Sensor Determining Vacancy"
})
table.insert(ctrls,
{
  Name = "LedFlash",
  ControlType = "Button",
  ButtonType = "Toggle",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = true,
  Description = "LED Flash on Detection"
})
table.insert(ctrls,
{
  Name = "PirEnabled",
  ControlType = "Button",
  ButtonType = "Toggle",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = true,
  Description = "PIR Sensor Enabled"
})
table.insert(ctrls,
{
  Name = "PirOccupiedSensitivity",
  ControlType = "Text",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = "High",
  Description = "PIR Occupied Sensitivity (Low, Medium, High)"
})
table.insert(ctrls,
{
  Name = "PirVacantSensitivity",
  ControlType = "Text",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = "High",
  Description = "PIR Vacant Sensitivity (Low, Medium, High)"
})
table.insert(ctrls,
{
  Name = "UltrasonicSensorAEnabled",
  ControlType = "Button",
  ButtonType = "Toggle",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = true,
  Description = "Ultrasonic Sensor A Enabled"
})
table.insert(ctrls,
{
  Name = "UltrasonicSensorBEnabled",
  ControlType = "Button",
  ButtonType = "Toggle",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = true,
  Description = "Ultrasonic Sensor B Enabled"
})
table.insert(ctrls,
{
  Name = "UltrasonicOccupiedSensitivity",
  ControlType = "Text",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = "High",
  Description = "Ultrasonic Occupied Sensitivity (Low, Medium, High, LowX, Low2X, Low3X)"
})
table.insert(ctrls,
{
  Name = "UltrasonicVacantSensitivity",
  ControlType = "Text",
  PinStyle = "Both",
  UserPin = true,
  DefaultValue = "High",
  Description = "Ultrasonic Vacant Sensitivity (Low, Medium, High, LowX, Low2X, Low3X)"
})

-- Photocell
table.insert(ctrls,
{
  Name = "Luminocity",
  ControlType = "Knob",
  ControlUnit = "Integer",
  Min = 0,
  Max = 65535,
  DefaultValue = 0,
  PinStyle = "Output",
  UserPin = true,
  Description = "Luminocity Value (16-bit integer)"
})
table.insert(ctrls,
{
  Name = "MinimumLightChange",
  ControlType = "Knob",
  ControlUnit = "Integer",
  Min = 655,
  Max = 65535,
  DefaultValue = 655,
  PinStyle = "Both",
  UserPin = true,
  Description = "The minimum change in the light level that must occur before the sensor will report a new value."
})
table.insert(ctrls,
{
  Name = "RoomBright",
  ControlType = "Indicator",
  IndicatorType = "Led",
  PinStyle = "Output",
  UserPin = true,
  Description = "Room Bright Indicator"
})
table.insert(ctrls,
{
  Name = "DarkToBrightThreshold",
  ControlType = "Knob",
  ControlUnit = "Integer",
  Min = 0,
  Max = 65535,
  DefaultValue = 20000,
  PinStyle = "Both",
  UserPin = true,
  Description = "When the light level value rises above the value set for this property, a dark room will transition to a bright room."
})
table.insert(ctrls,
{
  Name = "BrightToDarkThreshold",
  ControlType = "Knob",
  ControlUnit = "Integer",
  Min = 0,
  Max = 65535,
  DefaultValue = 40000,
  PinStyle = "Both",
  UserPin = true,
  Description = "When the light level value falls below the value set for this property, a bright room will transition to a dark room."
})