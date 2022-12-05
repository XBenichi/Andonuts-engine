local Andonuts = {} 

Andonuts.quit = false
Andonuts.running = false
Andonuts.input = true
Andonuts.paused = false
Andonuts.SceneManager = require "Andonuts.Scenes.sceneManager"

Andonuts.Initialize = function(screenWidth, screenHeight, title)
    love.window.title = title
    love.window.setMode(screenWidth,screenHeight,{vsync=0,borderless=false,centered=true,fullscreen=false,display=1})
end

Andonuts.update = function (delta)
    Andonuts.SceneManager.update()
end

Andonuts.draw = function ()
    Andonuts.SceneManager.draw()
    Andonuts.SceneManager.sceneDraw()
end


return Andonuts