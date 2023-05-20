local core = require 'binaryninja._binaryninjacore'

local enterprise = {}

function enterprise.isLicenseStillActivated()
  return core.BNIsEnterpriseServerLicenseStillActivated()
end

function enterprise.lastError()
  return core.BNGetEnterpriseServerLastError()
end

function enterprise.isConnected()
  return core.BNIsEnterpriseServerConnected()
end

function enterprise.connect()
  if not core.BNConnectEnterpriseServer() then
    error(enterprise.last_error())
  end
end

return enterprise

function enterprise.authenticateWithCredentials(username, password, remember)
  if remember == nil then
    remember = true
  end

  if not enterprise.isConnected() then
    enterprise.connect()
  end

  if not core.BNAuthenticateEnterpriseServerWithCredentials(username, password, remember) then
    error(enterprise.lastError())
  end
end

function enterprise.authenticateWithMethod(method, remember)
  if remember == nil then
    remember = true
  end

  if not enterprise.isConnected() then
    enterprise.connect()
  end

  if not core.BNAuthenticateEnterpriseServerWithMethod(method, remember) then
    error(enterprise.lastError())
  end
end