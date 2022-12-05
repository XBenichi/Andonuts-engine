local Testscene = require "Andonuts.Scenes.scene"

Testscene.draw = function ()
    love.graphics.print("hello world",10,10)
end

return Testscene