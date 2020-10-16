----- String Utilities

--- Title Case a string
-- @param string_input string
-- @return the Title Cased string
function title_case(string_input)
    local output_buffer = {}
    for word in string.gmatch(string_input, "%S+") do
        local first, rest = string.sub(word, 1, 1), string.sub(word, 2)
        table.insert(output_buffer, string.upper(first) .. string.lower(rest))
    end
    return table.concat(output_buffer, " ")
end
