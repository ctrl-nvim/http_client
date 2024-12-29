local valid, plenary_curl = pcall(require, 'plenary.curl')

if valid == false then
  vim.notify_once('Plenary dependency missing', vim.log.levels.ERROR)
  return
end

_G.ctrl = ctrl or {}

---@class ctrl.http_client
---@field get fun(url: string, opts?: table)
---@field post fun(url: string, opts?: table)
---@field head fun(url: string, opts?: table)
---@field patch fun(url: string, opts?: table)
---@field put fun(url: string, opts?: table)
---@field delete fun(url: string, opts?: table)
---@field request fun(opts: table)

---@type ctrl.http_client
_G.ctrl.http_client = ctrl.http_client or {}

ctrl.http_client.get = plenary_curl.get

ctrl.http_client.head = plenary_curl.head

ctrl.http_client.patch = plenary_curl.patch

ctrl.http_client.post = plenary_curl.post

ctrl.http_client.put = plenary_curl.put

ctrl.http_client.request = plenary_curl.request

ctrl.http_client.delete = plenary_curl.delete
