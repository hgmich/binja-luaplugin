local core = require('binaryninja._binaryninjacore')

local binaryninja = {}

local function merge(t1, t2)
  for k, v in pairs(t2) do
    t1[k] = v
  end
end

local function include_splat(moduleName)
  local module = require('binaryninja.' .. moduleName)
  merge(binaryninja, module)
  binaryninja[moduleName] = module

  return module
end

function binaryninja.global_namespace()
  merge(_G, binaryninja)
end

local enterprise = nil

if core.BNGetProduct() == 'Binary Ninja Enterprise Client' then
  enterprise = include_splat('enterprise')
end

local enums = include_splat('enums')
local settings = include_splat('settings')

function binaryninja.getUniqueIdentifier()
  return core.BNGetUniqueIdentifierString()
end

---returns a string pointing to the installed binary currently running
---
---**WARNING**: ONLY for use within the Binary Ninja UI, behavior is undefined and unreliable if run headlessly
function binaryninja.getInstallDirectory()
  return core.BNGetInstallDirectory()
end

-- Returns the version of the Binary Ninja core in use.
function binaryninja.coreVersion()
  return core.BNGetVersionString()
end

function binaryninja.coreUIEnabled()
  return core.BNIsUIEnabled()
end

return binaryninja
