local actor = {}

local Vector2 = require "Components.vector2"

actor.position = Vector2.new(0,0)

actor.velocity = Vector2.new(0,0)

actor.speed = 1

actor.update = function ()
    actor.position = actor.position + actor.velocity
end

actor.input = function ()
    
end

return actor