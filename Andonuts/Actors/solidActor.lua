local SolidActor = require "Actors.actor"

local Vector2 = require "Components.vector2"

SolidActor.isMovementLocked = false
SolidActor.isSolid = false
SolidActor.moveTemp = Vector2.new(0,0)
SolidActor.lastPosition = Vector2.new(0,0)

SolidActor.update = function ()
    SolidActor.lastPosition = SolidActor.position

    if SolidActor.velocity.x ~= 0 and !SolidActor.isMovementLocked then
        SolidActor.moveTemp = Vector2.new(SolidActor.position.x + SolidActor.velocity.x,SolidActor.position.y)
        local flag = true --TODO: add collision later
        
        if flag then
            SolidActor.position = SolidActor.moveTemp
        else
            SolidActor.velocity.x = 0
        end
    end

    if SolidActor.velocity.y ~= 0 and !SolidActor.isMovementLocked then
        SolidActor.moveTemp = Vector2.new(SolidActor.position.x,SolidActor.position.y + SolidActor.velocity.y)
        local flag = true --TODO: add collision later
        
        if flag then
            SolidActor.position = SolidActor.moveTemp
        else
            SolidActor.velocity.y = 0
        end
    end
end

return SolidActor