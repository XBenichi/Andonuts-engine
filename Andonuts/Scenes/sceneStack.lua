local SceneStack = {}

SceneStack.list = {}

SceneStack.Count = function ()
    local count = 0
    for i in pairs(SceneStack.list) do
        count = count + 1
    end
    return count
end

SceneStack.push = function (scene)
    local targetScene = loadfile(scene)
    table.insert(SceneStack.list,targetScene)
end

SceneStack.Peek = function ()
    return SceneStack.list[SceneStack.Count()]
end


return SceneStack