TimeoutDebouce = Timer.New()
TimeoutDebouce.EventHandler = function()
  TimeoutDebouce:Stop()
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        TimeoutSeconds = math.floor(Controls.OccupancyTimeout.Value)
      }
    }
  })
  SetValue("/Device/OccupancySensor/TimeoutSeconds", encoded , function() print("Set Occupancy Timeout to " .. Controls.OccupancyTimeout.Value) end)
end
Controls.OccupancyTimeout.EventHandler = function()
  TimeoutDebouce:Stop()
  TimeoutDebouce:Start(1)
end

Controls.LedFlash.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        IsLedFlashEnabled = ctrl.Boolean
      }
    }
  })
  SetValue("/Device/OccupancySensor/IsLedFlashEnabled", encoded , function() print("Set LED Flash to " .. tostring(ctrl.Boolean)) end)
end

Controls.ShortTimeout.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        IsShortTimeoutEnabled = ctrl.Boolean
      }
    }
  })
  SetValue("/Device/OccupancySensor/IsShortTimeoutEnabled", encoded , function() print("Set Short Timeout to " .. tostring(ctrl.Boolean)) end)
end

Controls.SingleSensorDeterminingOccupancy.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        IsSingleSensorDeterminingOccupancy = ctrl.Boolean
      }
    }
  })
  SetValue("/Device/OccupancySensor/IsSingleSensorDeterminingOccupancy", encoded , function() print("Set Single Sensor Determining Occupancy to " .. tostring(ctrl.Boolean)) end)
end

Controls.SingleSensorDeterminingVacancy.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        IsSingleSensorDeterminingVacancy = ctrl.Boolean
      }
    }
  })
  SetValue("/Device/OccupancySensor/IsSingleSensorDeterminingVacancy", encoded , function() print("Set Single Sensor Determining Vacancy to " .. tostring(ctrl.Boolean)) end)
end

Controls.PirEnabled.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        Pir = {
          IsSensor1Enabled = ctrl.Boolean
        }
      }
    }
  })
  SetValue("/Device/OccupancySensor/Pir/IsSensor1Enabled", encoded , function() print("Set PIR Enabled to " .. tostring(ctrl.Boolean)) end)
end

Controls.PirOccupiedSensitivity.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        Pir = {
          OccupiedSensitivity = ctrl.String
        }
      }
    }
  })
  SetValue("/Device/OccupancySensor/Pir/OccupiedSensitivity", encoded , function() print("Set PIR Occupied Sensitivity to " .. ctrl.String) end)
end

Controls.PirVacantSensitivity.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        Pir = {
          VacancySensitivity = ctrl.String
        }
      }
    }
  })
  SetValue("/Device/OccupancySensor/Pir/VacancySensitivity", encoded , function() print("Set PIR Vacancy Sensitivity to " .. ctrl.String) end)
end

Controls.UltrasonicSensorAEnabled.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        Ultrasonic = {
          IsSensor1Enabled = ctrl.Boolean
        }
      }
    }
  })
  SetValue("/Device/OccupancySensor/Ultrasonic/IsSensor1Enabled", encoded , function() print("Set Ultrasonic Sensor A Enabled to " .. tostring(ctrl.Boolean)) end)
end

Controls.UltrasonicSensorBEnabled.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        Ultrasonic = {
          IsSensor2Enabled = ctrl.Boolean
        }
      }
    }
  })
  SetValue("/Device/OccupancySensor/Ultrasonic/IsSensor2Enabled", encoded , function() print("Set Ultrasonic Sensor B Enabled to " .. tostring(ctrl.Boolean)) end)
end

Controls.UltrasonicOccupiedSensitivity.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        Ultrasonic = {
          OccupiedSensitivity = ctrl.String
        }
      }
    }
  })
  SetValue("/Device/OccupancySensor/Ultrasonic/OccupiedSensitivity", encoded , function() print("Set Ultrasonic Occupied Sensitivity to " .. ctrl.String) end)
end

Controls.UltrasonicVacantSensitivity.EventHandler = function(ctrl)
  local encoded = rapidjson.encode({
    Device = {
      OccupancySensor = {
        Ultrasonic = {
          VacancySensitivity = ctrl.String
        }
      }
    }
  })
  SetValue("/Device/OccupancySensor/Ultrasonic/VacancySensitivity", encoded , function() print("Set Ultrasonic Vacancy Sensitivity to " .. ctrl.String) end)
end