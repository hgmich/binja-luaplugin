local ffi = require 'ffi'

local core = require 'binaryninja._binaryninjacore'
local helpers = require 'binaryninja._helpers'

local settings = {}

ffi.cdef [[
  struct Uint64Wrapper { uint64_t value; };
]]
local uint64_t_ptr = ffi.typeof('struct Uint64Wrapper [1]')

local Settings = helpers.class {
  name = "binaryninja.settings.Settings",
  static = { instanceID = nil, handle = nil, defaultHandle = core.BNCreateSettings('default') },
  new = function(cls, fields)
    if not fields.handle then
      fields.instanceID = fields.instanceID or 'default'

      if fields.instanceID == 'default' then
        assert(cls.defaultHandle, 'failed to create default handle')
        fields.handle = cls.defaultHandle
      else
        fields.handle = core.BNCreateSettings(fields.instanceID)
      end
    else
      fields.instanceID = core.BNGetUniqueIdentifierString()
    end

    assert(fields.handle, 'failed to create handle')
  end,
  destructor = true,
}

function Settings:__tostring()
  helpers.isinstance(self, Settings)
  return string.format('<Settings instanceID=\'%s\'>', self.instanceID)
end

function Settings:__gc()
  helpers.isinstance(self, Settings)
  if not rawequal(self.handle, Settings.defaultHandle) then
    core.BNFreeSettings(self.handle)
  end
end

function Settings:getBool(key, view)
  helpers.isinstance(self, Settings)
  if view then
    view = view.handle
  end

  return core.BNSettingsGetBool(self.handle, key, view, nil)
end

function Settings:getDouble(key, view)
  helpers.isinstance(self, Settings)
  if view then
    view = view.handle
  end

  return core.BNSettingsGetDouble(self.handle, key, view, nil)
end

function Settings:getInteger(key, view)
  helpers.isinstance(self, Settings)
  if view then
    view = view.handle
  end

  return core.BNSettingsGetUInt64(self.handle, key, view, nil)
end

function Settings:getString(key, view)
  helpers.isinstance(self, Settings)
  if view then
    view = view.handle
  end

  return core.BNSettingsGetString(self.handle, key, view, nil)
end

function Settings:getStringList(key, view)
  helpers.isinstance(self, Settings)
  if view then
    view = view.handle
  end

  local length = ffi.new("uint64_t[1]")
  --length[0].value = 0ULL
  local result = core.BNSettingsGetStringList(self.handle, key, view, nil, length)

  assert(result, "core.BNSettingsGetString returned nil")

  local outlist = {}
  for i = 1, tonumber(length[0]) do
    table.insert(outlist, ffi.string(result[i]))
  end

  core.BNFreeStringList(ffi.cast('char**', result), length[0])

  return outlist
end

settings.Settings = Settings

return settings