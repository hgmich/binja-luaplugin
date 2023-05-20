local function merge(t1, t2)
  for k, v in pairs(t2) do
    t1[k] = v
  end
end
local binaryninja = require('binaryninja')
merge(_G, binaryninja)
_G.binaryninja = binaryninja