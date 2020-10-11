--
-- Created by IntelliJ IDEA.
-- User: xbl
-- Date: 10/4/2020
-- Time: 19:50
-- To change this template use File | Settings | File Templates.
--

---@param string_input string
---@return string
function title_case(string_input)
    local output_buffer = {}
    for word in string.gmatch(string_input, "%S+") do
        local first, rest = string.sub(word, 1, 1), string.sub(word, 2)
        table.insert(output_buffer, string.upper(first) .. string.lower(rest))
    end
    return table.concat(output_buffer, " ")
end
