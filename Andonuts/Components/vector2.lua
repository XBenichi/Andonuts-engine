local Vector2 = {}

Vector2.new = function (x,y)
    local collection = {
        x = x,
        y = y
    }
    
    return collection
end

return Vector2