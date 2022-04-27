function screenshot_to_dir_handler()
    mp.set_property("screenshot-template", "%x%F_%n")
    mp.command("screenshot")
end

mp.add_key_binding(nil, "screenshot-to-dir", screenshot_to_dir_handler)
