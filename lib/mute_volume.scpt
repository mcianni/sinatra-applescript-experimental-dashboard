if output muted of (get volume settings) then
  tell application "System Events" to set volume without output muted
else
  tell application "System Events" to set volume with output muted
end if
