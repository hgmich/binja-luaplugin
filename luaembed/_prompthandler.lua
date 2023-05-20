return function(f)
  local rval = f()
  local mt = getmetatable(rval)
  local rvalType = type(rval)
  if rvalType == 'string' then
    return '\'' .. rval .. '\'', '\n'
  elseif rvalType == 'nil' then
    return '', ''
  elseif rvalType == 'table' and (not mt or not mt.__tostring) then
    return _tdump(rval), '\n'
  else
    return tostring(rval), '\n'
  end
end