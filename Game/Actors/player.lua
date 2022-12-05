require "components.bool2num"

local Player = require "Actors.solidActor"

local Vector2 = require "Components.vector2"



Player.inputVector = Vector2.new(0,0)
Player.sprite = nil

Player.update = function ()
    Player.sprite.update()
    Player.inputVector.x = bool2num(love.keyboard.isDown("right")) - bool2num(love.keyboard.isDown("left"))
    Player.inputVector.y = bool2num(love.keyboard.isDown("down")) - bool2num(love.keyboard.isDown("up"))

    Player.velocity = Player.inputVector * Player.speed
    
    Player.position = Player.position

    if Player.lastPosition ~= Player.position then

    end

    if Player.inputVector == Vector2.new(0,0) then
        Player.sprite.chanveAnimation("Idle")
    else
        Player.sprite.chanveAnimation("Walk")
    end
end

Player.draw = function ()
    
end

return Player