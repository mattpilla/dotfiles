local filetypes = {
    'gif', 'webm', 'mp4'
}

function find_string_in(tbl, str)
    for _, element in ipairs(tbl) do
        if (element == str) then
            return true
        end
    end
    return false
end

function get_extension(filename)
    return string.match(filename, "%.([^.]+)$")
end

function auto_loop()
    if mp.get_property("shuffle") == "yes" then
        return
    end
    local ext = get_extension(mp.get_property("filename"))
    if find_string_in(filetypes, ext) then
        mp.set_property("loop", "inf")
    end
end

mp.register_event("file-loaded", auto_loop)
