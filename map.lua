local sti = require("sti")


local sizeX = 480 / 16 -- 30
local sizeY = 320 / 16 -- 20


map = {}


function map:load()
    self.test_map = sti("assets/maps/test_map.lua")
end

function map:update(dt)
    self.test_map:update(dt)
end

function map:draw()
    self.test_map:draw()
end