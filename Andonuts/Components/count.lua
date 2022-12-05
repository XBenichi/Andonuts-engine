Count = function (table)
    local count = 0
    for i in pairs(table) do
        count = count + 1
    end
    return count
end