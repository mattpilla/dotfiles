local step_size = 0.1

function dec_size_handler()
    step_window_size(-step_size)
end

function inc_size_handler()
    step_window_size(step_size)
end

function scale_window(ratio, amount, len, display_len)
    local new_ratio = ratio + amount
    if new_ratio > 1 then
        new_ratio = 1
    end
    local new_len = new_ratio * display_len
    local scale = mp.get_property_number("current-window-scale")
    local scale_ratio = len / scale
    local new_scale = new_len / scale_ratio
    mp.set_property_number("current-window-scale", new_scale)
end

function step_window_size(amount)
    local display_width = mp.get_property_number("display-width")
    local display_height = mp.get_property_number("display-height")
    local width = mp.get_property_number("osd-width")
    local height = mp.get_property_number("osd-height")
    local ratio_w = width / display_width
    local ratio_h = height / display_height
    if ratio_w > ratio_h then
        scale_window(ratio_w, amount, width, display_width)
    else
        scale_window(ratio_h, amount, height, display_height)
    end
end

mp.add_key_binding(nil, "dec-size-absolute", dec_size_handler)
mp.add_key_binding(nil, "inc-size-absolute", inc_size_handler)
