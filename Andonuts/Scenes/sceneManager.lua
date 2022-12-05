local SceneManager = {}


SceneManager.State = {"Scene","Transition"}

SceneManager.isEmpty = true

SceneManager.popped = true

SceneManager.newSceneShown = false

SceneManager.cleanupFlag = false

SceneManager.SceneStack = require "Andonuts.Scenes.sceneStack"


SceneManager.update = function()
    
end

SceneManager.updateScene = function()
    
end

SceneManager.sceneDraw = function ()
    
end

SceneManager.draw = function ()
    if SceneManager.SceneStack.Count() > 0 then
        local scene = SceneManager.SceneStack.Peek()
        SceneManager.sceneDraw = scene().draw
    end
end

return SceneManager