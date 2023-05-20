local function _tdump(t, depth, _curdepth)
  if depth == nil then
    depth = 3
  end
  if _curdepth == nil then
    _curdepth = 1
  end
  local function quote(v)
    local typev = type(v)
    if typev == 'string' then
      return string.format('\'%s\'', v)
    elseif typev == 'table' then
      if _curdepth <= depth then
        return _tdump(v, depth, _curdepth + 1)
      else
        return '<too deep>'
      end
    else
      return tostring(v)
    end
  end
  local function kquote(k)
    if type(k) == 'string' then
      return string.format('\'%s\'', k)
    end
    return string.format('[%s]', tostring(k))
  end
  local ks = {}
  local n = table.getn(t)
  local isarray = true
  local i = 1
  for _ in pairs(t) do
    if i > n then
      isarray = false
      break
    end
    i = i + 1
  end
  if isarray then
    for i, k in ipairs(t) do
      table.insert(ks, quote(t[k]))
    end
  else
    for k in pairs(t) do
      table.insert(ks, string.format('%s = %s', kquote(k), quote(t[k])))
    end
  end
  return string.format('{%s}', table.concat(ks, ', '))
end
return _tdump