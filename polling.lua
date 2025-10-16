function Poll()
  GetValues("/Device/OccupancySensor", parseOccupancy)
  GetValues("/Device/DeviceInfo", parseDeviceInfo)
end
PollTimer.EventHandler = Poll

function parseOccupancy(data)
  -- print("parseOccupancy", data)
  local success, obj = pcall(rapidjson.decode, data)
  if success and obj then
    -- print(rapidjson.encode(obj))
    obj = obj.Device.OccupancySensor -- unwrap the object
    if obj.IsRoomOccupied ~= nil then
      Controls.Occupied.Boolean = obj.IsRoomOccupied
    end
    if obj.IsGraceOccupancyDetected ~= nil then
      Controls.GraceOccupancy.Boolean = obj.IsGraceOccupancyDetected
    end
    if obj.TimeoutSeconds ~= nil then
      Controls.OccupancyTimeout.Value = obj.TimeoutSeconds
    end
    if obj.IsLedFlashEnabled ~= nil then
      Controls.LedFlash.Boolean = obj.IsLedFlashEnabled
    end
    if obj.IsShortTimeoutEnabled ~= nil then
      Controls.ShortTimeout.Boolean = obj.IsShortTimeoutEnabled
    end
    if obj.IsSingleSensorDeterminingOccupancy ~= nil then
      Controls.SingleSensorDeterminingOccupancy.Boolean = obj.IsSingleSensorDeterminingOccupancy
    end
    if obj.IsSingleSensorDeterminingVacancy ~= nil then
      Controls.SingleSensorDeterminingVacancy.Boolean = obj.IsSingleSensorDeterminingVacancy
    end

    -- PIR
    if obj.Pir.IsSensor1Enabled ~= nil then
      Controls.PirEnabled.Boolean = obj.Pir.IsSensor1Enabled
    end
    if obj.Pir.OccupiedSensitivity ~= nil then
      Controls.PirOccupiedSensitivity.String = obj.Pir.OccupiedSensitivity
    end
    if obj.Pir.VacancySensitivity ~= nil then
      Controls.PirVacantSensitivity.String = obj.Pir.VacancySensitivity
    end

    -- Ultrasonic
    if obj.Ultrasonic.IsSensor1Enabled ~= nil then
      Controls.UltrasonicSensorAEnabled.Boolean = obj.Ultrasonic.IsSensor1Enabled
    end
    if obj.Ultrasonic.IsSensor2Enabled ~= nil then
      Controls.UltrasonicSensorBEnabled.Boolean = obj.Ultrasonic.IsSensor2Enabled
    end
    if obj.Ultrasonic.OccupiedSensitivity ~= nil then
      Controls.UltrasonicOccupiedSensitivity.String = obj.Ultrasonic.OccupiedSensitivity
    end
    if obj.Ultrasonic.VacancySensitivity ~= nil then
      Controls.UltrasonicVacantSensitivity.String = obj.Ultrasonic.VacancySensitivity
    end

    -- Raw States
    if obj.RawStates.RawOccupancy ~= nil then
      Controls.RawOccupancy.Boolean = obj.RawStates.RawOccupancy
    end
    if obj.RawStates.RawPir ~= nil then
      Controls.RawPir.Boolean = obj.RawStates.RawPir
    end
    if obj.RawStates.RawUltrasonic ~= nil then
      Controls.RawUltrasonic.Boolean = obj.RawStates.RawUltrasonic
    end
  else
    print("parseOccupancy Error decoding JSON")
  end
end

function parseDeviceInfo(data)
  -- print("parseDeviceInfo", data)
  local success, obj = pcall(rapidjson.decode, data)
  if success and obj then
    -- print(rapidjson.encode(obj))
    obj = obj.Device.DeviceInfo -- unwrap the object
    if obj.SerialNumber then
      Controls.SerialNumber.String = obj.SerialNumber
    end
    if obj.Name then
      Controls.DeviceName.String = obj.Name
    end
    if obj.DeviceVersion then
      Controls.DeviceFirmware.String = obj.DeviceVersion
    end
    if obj.MacAddress then
      Controls.MACAddress.String = obj.MacAddress:upper():gsub("%.", ":")
    end
  else
    print("parseDeviceInfo Error decoding JSON")
  end
end
