function on_load()
	local width = mp.get_property_number("width")
	local height = mp.get_property_number("height")

	if width > height then
		-- 横屏视频
		mp.commandv("set", "geometry", "1440x810") -- 设置你想要的横屏分辨率
	else
		-- 竖屏视频
		mp.commandv("set", "geometry", "1440x2560") -- 设置你想要的竖屏分辨率
	end
end

mp.register_event("file-loaded", on_load)
