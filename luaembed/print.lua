return function(...)
  local args = { ... }
  for i, v in ipairs(args) do
    local vtype = type(v)
    if vtype ~= 'string' then
      local mt = getmetatable(v)
      if vtype == 'table' and (not mt or not mt.__tostring) then
        args[i] = _tdump(v)
      else
        args[i] = tostring(v)
      end
    end
  end
  _doprint(table.concat(args, '\t'))
end