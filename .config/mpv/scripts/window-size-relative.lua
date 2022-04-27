local step_size = 0.1

function dec_size_handler()
    step_window_size(-step_size)
end

function inc_size_handler()
    step_window_size(step_size)
end

function step_window_size(amount)
    local scale = mp.get_property_number("current-window-scale")
    scale = scale + amount
    mp.set_property_number("current-window-scale", scale)
end

mp.add_key_binding(nil, "dec-size-relative", dec_size_handler)
mp.add_key_binding(nil, "inc-size-relative", inc_size_handler)
