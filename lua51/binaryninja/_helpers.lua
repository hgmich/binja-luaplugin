local core = require('binaryninja._binaryninjacore')

local enterprise = nil

if core.BNGetProduct() == 'Binary Ninja Enterprise Client' then
  enterprise = require('binaryninja.enterprise')
end

local helpers = {}

function helpers._initPlugins()
  if not core.BNIsUIEnabled() and core.BNGetProduct() == 'Binary Ninja Enterprise Client' then
    pcall(function()
      enterprise.authenticateWithMethod('Keychain')
    end)

    if not core.BNIsLicenseValidated() or not enterprise.isLicenseStillActivated() then
      error(
        'To use Binary Ninja Enterprise from a headless lua script, you must check out a license first.\nYou can either check out a license for an extended time with the UI, or use the binaryninja.enterprise module.'
      )
    end
  end

  if not _pluginInit then
    -- The first call to BNInitCorePlugins returns true for successful initialization and true in this context indicates headless operation.
    -- The result is pulled from BNInitPlugins as that now wraps BNInitCorePlugins.
    local isHeadlessInitOnce = core.BNInitPlugins(not os.getenv('BN_DISABLE_USER_PLUGINS'))
    --local minLevel = Settings().get_string('python.log.minLevel')

    --    if _enableDefaultLog and isHeadlessInitOnce and minLevel in LogLevel.__members__ and not binaryninja.coreUIEnabled(
    --) and sys.stderr.isatty() then
    if _enableDefaultLog and isHeadlessInitOnce and not core.BNIsUIEnabled() then
      log_to_stderr(LogLevel[min_level])
    end
    core.BNInitRepoPlugins()
  end

  if core.BNIsLicenseValidated() then
    _pluginInit = True
  else
    error('License is not valid. Please supply a valid license.')
  end
end

-- A 'classic' workaround for LuaJIT/5.1's lack of finalizer support for regular tables.
-- using newproxy(true) creates a transparent userdata wrapper around a table, which we use
-- to wrap the real metatable, and then set the ud's __gc metamethod to thunk to the table's
local function setmetatablegc(t, mt)
  -- Versions of Lua not requiring this hack don't have newproxy
  -- This will stop silliness if I forget about it
  if newproxy ~= nil then
    local proxy = newproxy(true)
    getmetatable(proxy).__gc = function()
      mt.__gc(t)
    end
    t[proxy] = true
  end

  return setmetatable(t, mt)
end

function helpers.isinstance(t, mt)
  if not rawequal(getmetatable(t), mt) then
    error("instance method used as static method (did you forget to use ':' rather than '.'?)")
  end
end

function helpers.class(t)
  local s = t.static or {}

  local setmetatable = setmetatable
  if t.destructor then
    print('destructor enabled')
    setmetatable = setmetatablegc
  end

  if not t.name then
    error('class name required')
  end

  local newInner = t.new or (function(_s, _o)
  end)

  function s:new(o)
    o = o or {}

    newInner(s, o)

    setmetatable(o, self)
    self.__index = self

    return o
  end

  setmetatable(s, { __tostring = function()
    return string.format('<class \'%s\'>', t.name)
  end })

  return s
end

return helpers