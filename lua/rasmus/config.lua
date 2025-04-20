local M = {}

local function opt(key, default)
    key = "rasmus_" .. key
    value = vim.g[key]

    if value == nil then
        return default
    elseif value == 0 then
        return false
    end

    return value
end

local function style(italic, bold)
    return { bold = bold, italic = italic }
end

M.config = {
    transparent = opt("transparent", false),
    comment_style = style(opt("italic_comments", true), opt("bold_comments", false)),
    keyword_style = style(opt("italic_keywords", false), opt("bold_keywords", false)),
    boolean_style = style(opt("italic_booleans", false), opt("bold_booleans", false)),
    function_style = style(opt("italic_functions", false), opt("bold_functions", false)),
    variable_style = style(opt("italic_variables", false), opt("bold_variables", false)),
    variant = opt("variant", "dark"),
    custom_hl_groups = opt("custom_hl_groups", {}),
}

return M
