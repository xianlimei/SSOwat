-- Remove prepending '@' & trailing 'init.lua'
script_path = string.sub(debug.getinfo(1).source, 2, -9)

-- Include local libs in package.path
package.path = package.path .. ";"..script_path.."?.lua"

-- Load libraries
json = require "json"
lualdap = require "lualdap"
math = require "math"
hige = require "hige"

-- Shared table
flashs = {}
login = {}
logout = {}

-- Path of the configuration
conf_path = "/etc/ssowat/conf.json"

ngx.log(ngx.INFO, "SSOwat ready")
