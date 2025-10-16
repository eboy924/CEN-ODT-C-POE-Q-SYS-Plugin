Cookies = nil
Token = nil

function ClearConnection()
  Cookies = nil
  Token = nil
end

function CheckForCookies(headers)
  if type(headers) == "table" and headers["Set-Cookie"] then
    print("New Cookies")
    if type(headers["Set-Cookie"]) == "table" then
      print(table.concat(headers["Set-Cookie"], " "))
      Cookies = Cookies .. table.concat(headers["Set-Cookie"], " ")
    elseif type(headers["Set-Cookie"]) == "string" then
      print(headers["Set-Cookie"])
      Cookies = Cookies .. " " .. headers["Set-Cookie"]
    end
  end
end

function CredentialsPresent()
  return (Controls.IPAddress.String ~= "" and Controls.Username.String ~= "" and Controls.Password.String ~= "")
end

function Connect()
  print("Connect() Called")
  Controls.Status.Value = 4
  ClearConnection()
  if CredentialsPresent() then
    HttpClient.Get(
      {
        Url = "https://" .. Controls.IPAddress.String .. "/userlogin.html",
        Headers = {},
        Timeout = 3,
        EventHandler = function(tbl, code, data, err, headers)
          print("Connect Get:", code)
          if code == 200 then -- Got login page, now post credentials
            Cookies = headers["Set-Cookie"]
            HttpClient.Post(
              {
                Url = "https://" .. Controls.IPAddress.String .. "/userlogin.html",
                Headers = {
                  ["Cookie"] = Cookies,
                  ["Origin"] = Controls.IPAddress.String,
                  ["Referer"] = "https://" .. Controls.IPAddress.String .. "/userlogin.html"
                },
                Timeout = 3,
                Data = "login=" .. Controls.Username.String .. "&&passwd=" .. Controls.Password.String,
                EventHandler = function(tbl, code, data, err, headers)
                  print("Connect post:", code)
                  if code == 200 then
                    -- print(rapidjson.encode(headers))
                    Cookies = Cookies .. ";" .. table.concat(headers["Set-Cookie"], "")
                    -- print(Cookies)
                    Token = headers["CREST-XSRF-TOKEN"]
                    -- print(Token)
                    Timer.CallAfter(
                      function()
                        PollTimer:Start(PollInterval)
                      end,
                      3
                    )
                    ConnectTimer:Stop()
                    Controls.Status.Value = 0
                    print("Connected")
                  end
                end
              }
            )
          end
        end
      }
    )
  end
end
ConnectTimer.EventHandler = Connect

function Reconnect()
  print("Reconnect() Called")
  ClearConnection()
  Controls.Status.Value = 4
  if CredentialsPresent() then
    ConnectTimer:Start(ReconnectTime)
    Connect()
  else
    PollTimer:Stop()
    ConnectTimer:Stop()
    ClearConnection()
  end
end

function GetValues(path, handler)
  if Cookies and Token then
    HttpClient.Get(
      {
        Url = "https://" .. Controls.IPAddress.String .. path,
        Headers = {
          ["Cookie"] = Cookies,
          ["X-CREST-XSRF-TOKEN"] = Token
        },
        Timeout = 3,
        EventHandler = function(tbl, code, data, err, headers)
          if code == 200 then
            CheckForCookies(headers)
            if handler and type(handler) == "function" then
              handler(data)
            else
              print("No Handler for GetValues")
            end
          else
            print("GetValues Error", code, err)
            Reconnect()
          end
        end
      }
    )
  end
end

function SetValue(path, data, handler)
  if Cookies and Token then
    HttpClient.Post(
      {
        Url = "https://" .. Controls.IPAddress.String .. path,
        Headers = {
          ["Cookie"] = Cookies,
          ["X-CREST-XSRF-TOKEN"] = Token,
          ["Referer"] = Controls.IPAddress.String,
          ["Content-Type"] = "application/json"
        },
        Data = data,
        Timeout = 3,
        EventHandler = function(tbl, code, data, err, headers)
          if code == 200 or code == 204 then
            CheckForCookies(headers)
            if handler and type(handler) == "function" then
              handler(data)
            else
              print("No Handler for SetValue")
            end
          else
            print("SetValue Error", code, err)
            Reconnect()
          end
        end
      }
    )
  end
end

Controls.IPAddress.EventHandler = Connect
Controls.Username.EventHandler = Connect
Controls.Password.EventHandler = Connect
