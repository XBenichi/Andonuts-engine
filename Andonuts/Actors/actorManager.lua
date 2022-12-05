require "Components.count"

local ActorManager = {}

ActorManager.actors = {}

ActorManager.actorsToAdd = {}

ActorManager.actorsToRemove = {}

ActorManager.add = function (actor)
    table.insert(ActorManager.actorsToAdd,actor)
end

ActorManager.addAll = function (actors)
    for i in pairs(actors) do
        ActorManager.add(actors[i])
    end
    
end

ActorManager.step = function ()

    for i in pairs(ActorManager.actors) do
        ActorManager.actors[i].input()
        ActorManager.actors[i].update()
    end

    table.insert(ActorManager.actors,ActorManager.actorsToAdd)
    ActorManager.actorsToAdd = {}
    while Count(ActorManager.actorsToRemove) > 0 do
        local actor = ActorManager.actorsToRemove[1]
        for i in ActorManager.actors do
            if ActorManager.actors[i] == actor then
                table.remove(ActorManager.actors,i)
            end
        end
        table.remove(ActorManager.actors,actor)
    end
    ActorManager.actorsToRemove = {}
    
end


return ActorManager