--- Adds a Tabletop Simulator Custom UI Asset if it doesn't exist already
---@param t table
---@param name string
---@param url string
---@return table
function add_custom_asset(t, name, url)
    if has_custom_asset(name, url) then
        return t
    end

    table.insert(t, {
        name = name,
        url = url,
    })
    return t
end

--- Checks to see if a Custom UI Asset exists
---@param name string
---@param url string
---@return boolean
function has_custom_asset(name, url)
    for _, v in pairs(UI.getCustomAssets()) do
        if v.name == name and v.url == url then
            return true
        end
    end
    return false
end