function love.load()
	f,b = love.filesystem.newFile("S2015.html","w" )
	entries = require "tables/F2015"

	for i,e in ipairs(entries) do
		f:write("<div class='entry'>\n")
		f:write("\t<h2>" .. e.game)
		if e.place then
			f:write("\n\t<img class = 'medal' ")
			if e.place == 1 then
				f:write("src = 'icons/gold-medal.png' title ='1st place'")
			elseif e.place == 2 then
				f:write("src = 'icons/silver-medal.png' title ='2nd place'")
			else
				f:write("src = 'icons/bronze-medal.png' title ='3rd place'")
			end
			f:write("/>")
		end
		local internalGameName = string.gsub(e.game," ", "_")
		internalGameName = string.gsub(internalGameName,"'", "")
		local internalTeamName = string.gsub(e.team," ", "_")
		internalTeamName = string.gsub(internalGameName,"'","")
		local intrnalFolderName = internalTeamName .. "-" .. internalGameName
		local internalImagePath = "screenshots/" .. s .. "/" .. internalGameName .. ".png"
		local internalThumbnailPath = "screenshots/" .. s .. "/thumbs/" .. internalGameName .. ".png"
		
		f:write("</h2>\n")
		f:write("\t<div class = 'screenshot'><a href='".. internalImagePath .."'><img src='".. internalThumbnailPath .. "' /></a></div>\n")
		f:write("\t<p>by <strong>"..e.team .."</strong></p>\n")
		if e.members then
			f:write("\t<p><span style='font-size: 0.75em;'>(" .. e.members .. ")</span></p>\n")
		end
		f:write("\t<p>Framework: <a href =")
		if e.framework == "Unity" then
			f:write("'http://unity3d.com/'>Unity")
		elseif e.framework == "love2d" then
			f:write("'http://love2d.org/'>LÖVE")
		elseif e.framework == "Processing" then
			f:write("'http://processing.org/'>Processing")
		elseif e.framework == "pygame" then
			f:write("'http://www.pygame.org/'> pygame")
		elseif e.framework == "flash" then
			f:write("'http://www.adobe.com/software/flash/about/'>Adobe Flash")
		elseif e.framework == "node.js" then
			f:write("'https://nodejs.org/'>node.js")
		elseif e.framework == "gamemaker" then
			f:write("'https://www.yoyogames.com/studio'>GameMaker")
		elseif e.framework == "blender" then
			f:write("'http://www.blender.org/'>Blender")
		elseif e.framework == "QtQuick" then
			f:write("'http://doc.qt.io/qt-5/qtquick-index.html'>Qt Quick")
		elseif e.framework == "Canvas" then
			f:write("'https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API'>Canvas")
		elseif e:framework == "Construct 2" then
			f:write("'https://www.scirra.com/construct2'>Construct 2")
		end

		f:write("</a></p>\n")
		f:write("\t<p>\n")
		for k,v in pairs(e.links) do
			f:write("\t\t<a href = '" .. v .. "' class = 'download-link'><img class = 'download-link' src = 'icons/" .. k .. ".png' /></a>\n")
		end
		f:write("\t</p>\n</div>\n")
	end

	f:close()
	print("Data saved to " .. love.filesystem.getSaveDirectory() .. "/entries.html")
	love.event.push("quit")
end

--TODO
--Aventurines Games' download link is down