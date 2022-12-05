local Graphic = {}

local json = require "Components.json"

local Vector2 = require "Components.vector2"

Graphic.frameRec = {x = 0,y = 0,width = 0,height = 0}

Graphic.animationFile = {groups = {},frames = {},spritesheet = ""}

Graphic.position = Vector2.new(0,0)
Graphic.sprite = nil
Graphic.origin = Vector2.new(0,0)
Graphic.currentAnimation = ""
Graphic.visible = false
Graphic.currentFrame = 0
Graphic.currentSpriteFrame = 0
Graphic.framesCounter = 0

Graphic.new = function (resource, Sposition)
    local newFile = love.filesystem.read(resource)
    Graphic.animationFile = json.decode(newFile)

    Graphic.position = Sposition

    Graphic.sprite = love.graphics.newimage(Graphic.animationFile.spritesheet)
end


return Graphic