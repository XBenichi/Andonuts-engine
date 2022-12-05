local Andonuts = require "Andonuts.engine"

Andonuts.Initialize(500,500,"Andonuts Engine")

print("bitch")

Andonuts.SceneManager.SceneStack.push("Andonuts/Scenes/testscene2.lua")

function love.update(delta)
    Andonuts.update(delta)
end

function love.draw()
    Andonuts.draw()
    
end