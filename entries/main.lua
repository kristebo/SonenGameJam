function love.load()
	f,b = love.filesystem.newFile("S2015.html","w" )

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
		f:write("</h2>\n")
		f:write("\t<div class = 'screenshot'><a href='screenshots/".. e.screenshot .."'><img src='screenshots/thumbs/".. e.screenshot .. "' /></a></div>\n")
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
		elseif e.framework == "pyGame" then
			f:write("'http://www.pygame.org/'> pyGame")
		elseif e.framework == "flash" then
			f:write("'http://www.adobe.com/software/flash/about/'>Adobe Flash")
		elseif e.framework == "node.js" then
			f:write("'https://nodejs.org/'>node.js")
		elseif e.framework == "gamemaker" then
			f:write("'https://www.yoyogames.com/studio'>GameMaker")
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

s = "games/S2015/"
entries = {
	{
		team = "Aventurine Games",
		game = "Balloon Float Adventure",
		members = "Kristine Hein, Søren Gammelgaard, Lars Musland and Espen H. Kristensen",
		screenshot = "balloon-float-adventure.png",
		framework = "Unity",
		links = {

		}

	},
	{
		team = "That Guy",
		game = "BlimpWars",
		members = "Srod Karim",
		screenshot = "BlimpWars.png",
		framework = "love2d",
		links = {
			love = s .. "blimpWars.love"
		},
		place = 2
	},
	{
		team = "Hello World",
		game = "Don't Let Me Drown",
		members = "André Borba and Gustavo Kerezi",
		screenshot = "dont-let-me-drown.png",
		framework = "Processing",
		links = {
			github = "https://github.com/andrebnassis/DontLetMeDrown",
			exe = s .. "DontLetMeDrown.zip"
		}
	},
	{
		team = "Jesus Tape",
		game = "Erodible Bit",
		members = "Vegard Lillevoll and Tuuli Lehtonen",
		screenshot = "erodible-bit.png",
		framework = "pyGame",
		links = {
			zip = s .."ErodibleBit.zip"
		}
	},
	{
		team = "Morten er Pen",
		game = "Fine Fisken",
		members = "Morten Hillbom",
		screenshot = "fine-fisken.png",
		framework = "flash",
		links = {
			swf = s .. "FineFisken.swf",
			zip = s .. "FineFisken.zip"
		}
	},
	{
		team = "HalfByte",
		game = "Float",
		members = "Adrian Arnason, Marie Roald and Karl Gustav Georgsen",
		screenshot = "float.png",
		framework = "Unity",
		links = {
			github = "https://github.com/morbo1993/HalfbyteSonenGameJam2015"
		},
		place = 3
	},
	{
		team = "Blodgruppa",
		game = "Float Café",
		members = "Sigmund Hansen",
		screenshot = "float-cafe.png",
		framework = "Processing",
		links = {
			github = "https://github.com/Sardtok/FloatCafe"
		}
	},
	{
		team = "Amazing Airheads",
		game = "Float Islands",
		members = "Mads Gjerstad Eide, Jan Ole Skotterud, Frida Gjerstad Eide, Ruben Gjerstad Eide, Benjamin Sørlie Ormset, Martin Folkeseth and Kine Gjerstad Eide",
		screenshot = "float-island.png",
		framework = "Unity",
		links = {
			github = "https://github.com/benjamso/gamejam"
		}
	},
	{
		team = "WaffleWings",
		game = "Floating Through Space",
		members =  "Karl Magnus Kalvik and Bård-Kristian Krohg",
		screenshot = "floating-through-space.png",
		framework = "blender",
		links = {
			blender = s .. "FloatingSRS.zip",
			exe = s .. "FloatingWIN.zip"
		}
	},
	{
		team = "RogerDat",
		game = "Floaty Floyd",
		members = "Steinar Pedersen and Morten Hillbom",
		screenshot = "floaty-floyd.png",
		framework = "gamemaker",
		links = {
			gamemaker = s .. "FloatyFloyd.gmx.zip"
		}
	},
	-- {
	-- 	team = "Sorceress",
	-- 	game = "Kursk",

	-- },
	{
		team = "Team Beam",
		game = "Milk Float",
		members = "Kyrre Havik Eriksen",
		screenshot = "milk-float.png",
		framework = "love2d",
		links = {
			github = "https://github.com/Kyrremann/milk-float",
			love = s .. "milk-float.love"
		}
	},
	{
		team = "Undecided",
		game = "OuOooj",
		members = "Paul Magnus Sørensen-Clark and Max Tomren",
		screenshot = "OuOooj.png",
		framework = "Processing",
		links = {
			github = "https://github.com/PaulMag/OuOooj"
		}
	},
	{
		team = "IslandBear",
		game = "Project Float",
		members = "Bjørn Husby and Øyvind Johannesen",
		screenshot = "project-float.png",
		framework = "Unity",
		links = {
			exe = s .. "projectfloat.zip",
			zip = s .. "projectfloat-source.zip"
		}
	},
	{
		team = "Berg Nilsen",
		game = "Royal Stock Exchange Simulator anno 1750",
		members = "Steffen Nilsen and Øyvind T. Berg",
		screenshot = "royal-stock.png",
		framework = "node.js",
		links = {
			github = "https://github.com/myrsnipe/floatgame",
			soundcloud = "https://soundcloud.com/yvind-berg-1/ingamemusic"
		}
	},
	{
		team = "Bitslap",
		game = "Rumble on Raft",
		screenshot = "rumble-on-raft.png",
		framework = "gamemaker",
		links = {
			exe = s .. "rumble.zip",
			gamemaker = s .. "rumble.gmx.zip"
		},
		place = 1
	},
	{
		team = "Team Brunost",
		game = "Surival Float",
		members = "Daniel Lange, Henning Parratt Tandberg and Torstein Breivig",
		screenshot = "survival-float.png",
		framework = "love2d",
		links = {
			love = s .. "SurvivalFloat.love"
		}
	},
	{
		team = "Evig Spill",
		game = "TentaScape",
		members = "Jon Helmer Dahl and Balder kjøs",
		screenshot = "tentascape.png",
		framework = "Unity",
		links = {
			exe = s .. "tentascape.zip",
			zip = s .. "tentascape-source.zip"
		}
	},
	{
		team = "Smørbrød",
		game = "The Guy-Quest",
		members = "Akari Aoba, Nicolas Hemelsoet, Tristan Bumm",
		screenshot = "the-guy-quest.png",
		framework = "love2d",
		links = {
			love = s .. "the-guy-quest.love"
		}
	}
}