local current_page = PageNames[props["page_index"].Value]

local FSize = 12
local controlHeight = 18
local labelSize = {110, controlHeight}
local TextSize = {185, controlHeight}
local buttonSize = {40, controlHeight}

x = 4
y = 4

if current_page == "Setup" then
  layout["Status"] = {
    PrettyName = "Status",
    Style = "Text",
    Position = {x, y},
    Size = {(labelSize[1] + 4 + TextSize[1]), 32},
    Margin = 0
  }
  y = y + 32 + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "IP Address:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["IPAddress"] = {
    PrettyName = "Setup~IP Address",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Username:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["Username"] = {
    PrettyName = "Setup~Username",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Password:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["Password"] = {
    PrettyName = "Setup~Password",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "MAC Address:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["MACAddress"] = {
    PrettyName = "Setup~MAC Address",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  } 
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Serial Number:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["SerialNumber"] = {
    PrettyName = "Setup~Serial Number",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Device Name:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["DeviceName"] = {
    PrettyName = "Setup~Device Name",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Firmware Version:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["DeviceFirmware"] = {
    PrettyName = "Setup~Firmware Version",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
elseif current_page == "Occupancy Sensor" then
  labelSize[1] = 180
  TextSize[1] = 100
  table.insert(
    graphics,
    {
      Type = "Header",
      Text = "Occupancy Sensor States",
      Position = {x, y},
      Size = {(labelSize[1] + 4 + TextSize[1]), controlHeight + 4},
      FontSize = FSize + 2,
      HTextAlign = "Center"
    }
  )
  y = y + controlHeight + 4 + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Occupancy State:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["Occupied"] = {
    PrettyName = "Occupancy~Occupancy State",
    Style = "Led",
    Position = {x + labelSize[1] + 4, y},
    Size = {controlHeight, controlHeight},
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Grace Occupancy State:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["GraceOccupancy"] = {
    PrettyName = "Occupancy~Grace Occupancy State",
    Style = "Led",
    Position = {x + labelSize[1] + 4, y},
    Size = {controlHeight, controlHeight},
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Raw Occupancy State:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["RawOccupancy"] = {
    PrettyName = "Occupancy~Raw Occupancy State",
    Style = "Led",
    Position = {x + labelSize[1] + 4, y},
    Size = {controlHeight, controlHeight},
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Raw PIR State:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["RawPir"] = {
    PrettyName = "Occupancy~Raw PIR State",
    Style = "Led",
    Position = {x + labelSize[1] + 4, y},
    Size = {controlHeight, controlHeight},
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Raw Ultrasonic State:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["RawUltrasonic"] = {
    PrettyName = "Occupancy~Raw Ultrasonic State",
    Style = "Led",
    Position = {x + labelSize[1] + 4, y},
    Size = {controlHeight, controlHeight},
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Header",
      Text = "Occupancy Sensor Configuration",
      Position = {x, y},
      Size = {(labelSize[1] + 4 + TextSize[1]), controlHeight + 4},
      FontSize = FSize + 2,
      HTextAlign = "Center"
    }
  )
  y = y + controlHeight + 4 + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Occupancy Timeout (s):",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["OccupancyTimeout"] = {
    PrettyName = "Occupancy~Occupancy Timeout (s)",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Short Timeout:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["ShortTimeout"] = {
    PrettyName = "Occupancy~Short Timeout",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {x + labelSize[1] + 4, y},
    Size = buttonSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Single Sensor Occupancy:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["SingleSensorDeterminingOccupancy"] = {
    PrettyName = "Occupancy~Single Sensor Occupancy",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {x + labelSize[1] + 4, y},
    Size = buttonSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Single Sensor Vacancy:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["SingleSensorDeterminingVacancy"] = {
    PrettyName = "Occupancy~Single Sensor Vacancy",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {x + labelSize[1] + 4, y},
    Size = buttonSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "LED Flash on Detection:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["LedFlash"] = {
    PrettyName = "Occupancy~LED Flash",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {x + labelSize[1] + 4, y},
    Size = buttonSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Header",
      Text = "PIR Sensor Configuration",
      Position = {x, y},
      Size = {(labelSize[1] + 4 + TextSize[1]), controlHeight + 4},
      FontSize = FSize + 2,
      HTextAlign = "Center"
    }
  )
  y = y + controlHeight + 4 + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "PIR Sensor Enabled:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["PirEnabled"] = {
    PrettyName = "Occupancy~PIR Sensor Enabled",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {x + labelSize[1] + 4, y},
    Size = buttonSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "PIR Occupied Sensitivity:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["PirOccupiedSensitivity"] = {
    PrettyName = "Occupancy~PIR Occupied Sensitivity",
    Style = "ComboBox",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "PIR Vacant Sensitivity:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["PirVacantSensitivity"] = {
    PrettyName = "Occupancy~PIR Vacant Sensitivity",
    Style = "ComboBox",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Header",
      Text = "Ultrasonic Sensor Configuration",
      Position = {x, y},
      Size = {(labelSize[1] + 4 + TextSize[1]), controlHeight + 4},
      FontSize = FSize + 2,
      HTextAlign = "Center"
    }
  )
  y = y + controlHeight + 4 + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Ultrasonic Sensor A Enabled:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["UltrasonicSensorAEnabled"] = {
    PrettyName = "Occupancy~Ultrasonic Sensor A Enabled",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {x + labelSize[1] + 4, y},
    Size = buttonSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Ultrasonic Sensor B Enabled:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["UltrasonicSensorBEnabled"] = {
    PrettyName = "Occupancy~Ultrasonic Sensor B Enabled",
    Style = "Button",
    ButtonStyle = "Toggle",
    Position = {x + labelSize[1] + 4, y},
    Size = buttonSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Ultrasonic Occupied Sensitivity:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["UltrasonicOccupiedSensitivity"] = {
    PrettyName = "Occupancy~Ultrasonic Occupied Sensitivity",
    Style = "ComboBox",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Ultrasonic Vacant Sensitivity:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["UltrasonicVacantSensitivity"] = {
    PrettyName = "Occupancy~Ultrasonic Vacant Sensitivity",
    Style = "ComboBox",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }

elseif current_page == "Photo Sensor" then
  labelSize[1] = 180
  TextSize[1] = 100
    table.insert(
    graphics,
    {
      Type = "Header",
      Text = "PhotoSensor Level",
      Position = {x, y},
      Size = {(labelSize[1] + 4 + TextSize[1]), controlHeight + 4},
      FontSize = FSize + 2,
      HTextAlign = "Center"
    }
  )
  y = y + controlHeight + 4 + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Photosensor Level:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["Luminocity"] = {
    PrettyName = "Photo Sensor~Photosensor Level",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0,
    IsReadOnly = true
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Minimum Change:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["MinimumLightChange"] = {
    PrettyName = "Photo Sensor~Minimum Change",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Header",
      Text = "Threshold Detection",
      Position = {x, y},
      Size = {(labelSize[1] + 4 + TextSize[1]), controlHeight + 4},
      FontSize = FSize + 2,
      HTextAlign = "Center"
    }
  )
  y = y + controlHeight + 4 + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Room Is Bright:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["RoomBright"] = {
    PrettyName = "Photo Sensor~Room Is Bright",
    Style = "Led",
    Position = {x + labelSize[1] + 4, y},
    Size = {controlHeight, controlHeight},
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Dark to Bright Threshold:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["DarkToBrightThreshold"] = {
    PrettyName = "Photo Sensor~Dark to Bright Threshold",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }
  y = y + controlHeight + 4
  table.insert(
    graphics,
    {
      Type = "Label",
      Text = "Bright to Dark Threshold:",
      Position = {x, y},
      Size = labelSize,
      FontSize = FSize,
      HTextAlign = "Right"
    }
  )
  layout["BrightToDarkThreshold"] = {
    PrettyName = "Photo Sensor~Bright to Dark Threshold",
    Style = "Text",
    Position = {x + labelSize[1] + 4, y},
    Size = TextSize,
    Margin = 0
  }

end