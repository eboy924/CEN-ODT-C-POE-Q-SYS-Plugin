table.insert(props,
{
  Name = "Poll Interval",
  Type = "integer",
  Min = 1,
  Max = 3600,
  Value = 3,
  Comment = "Polling Interval in seconds",
  Description = "How often to poll the device for control updates"
})
table.insert(props,
{
  Name = "Reconnect Time",
  Type = "integer",
  Min = 5,
  Max = 3600,
  Value = 10,
  Comment = "Reconnect Time in seconds",
  Description = "How long to wait before attempting to reconnect after a connection failure"
})