local discordia = require('discordia')
local client = discordia.Client()
	
client:on('ready', function()
    print('Logged in as User: '.. client.user.username)
	print('Printing Server List:')
		for guild in client.guilds do
		print(guild.name)
end
local f = io.open("DEFAULT_GAME", "rb")
    local content = f:read("*all")
local game = string.gsub(content, "%s+", "")
    f:close()
client:setGameName(game)
	
end)

--Dev Var
CHRONOMLY = "251383432331001856"
JDENDER = "250432205145243649"
ROMTYPO = "186295030388883456"
SPACEX = "220568440161697792"

--Commands
client:on('messageCreate', function(message)
	-- exit early if the author is the same as the client
	if message.author == client.user then return end

	-- split the message content into a command and everything else
	local cmd, arg = message.content:match('(%S+)%s+(.*)')
	cmd = cmd or message.content
	
	if cmd == '<ping' then
        message.channel:sendMessage(':ping_pong: pong!')
		print(string.format('<ping command was used by %s', message.author.id))
	end

    if cmd == '<smore' then
        message.channel:sendMessage('https://www.poptarts.com/content/NorthAmerica/pop_tarts/en_US/pages/flavors/bakery/frosted-s-mores-toaster-pastries/jcr:content/productContent/par/responsiveimage.img.png/1475703429032.png')
		print(string.format('<smore command was used by %s', message.author.id))
    end
	
	if cmd == '<memez' then
        message.channel:sendMessage('http://prntscr.com/ewxqgu')
		print(string.format('<memez command was used by %s', message.author.id))
    end
	
	if cmd == '<quote' then
        message.channel:sendMessage([[**fam i am a profeshanl factorio player**
**automate EVRYTHING** -Jdenderplays 2017]])
		print(string.format('<quote command was used by %s', message.author.id))
	end
	
	if cmd == '<fail' then
		message.channel:sendMessage(string.format('%s, you clearly havent been burdened by the overobundence of education have you?', arg))
		print(string.format('<fail command was used by %s', message.author.id))
	end
	
--Bug Command
	if cmd == '<bug' then 
		local channel = client:getTextChannel("296030986708451328")
		channel:sendMessage(string.format('<@&294883525881102336> , User: %s reported:', message.author.username))channel:sendMessage(arg)
		print(string.format('<bug was used by %s', message.author.id))
		print('to report:', arg)
	end
	
--Echo Command
	if cmd == '<echo' then
	if arg == nil then return end
		message.channel:sendMessage(arg)
		print(string.format('<echo command was used by %s to say', message.author.id))print(arg)
	end
	
--Info Command
	if cmd == '<info' then
		message.channel:sendMessage(string.format([[
Hello, I am SmoreBot,
I am a Discord Bot made with **Lua** using **Discordia**, I am developed by Chronomly6 and jdenderplays, also I am in %s servers.]], client.guildCount
))
		print(string.format('<info was used by %s', message.author.id))
	end
	
--Help Command
	if cmd == '<@290228059599142913>' then
	message.channel:sendMessage('Help Sent! :mailbox_with_mail:')message.author:sendMessage{
  embed = {
    title = "Command List",
        fields = {
      {name = "Main Commands", value = [[
<echo (text) - says what you say where it says "text"
<memez - shows you the memes
<ping - pings the bot
<smore - shows you some poptarts
<quote - a quote from jdenderplays
<help - this message
<fail - insults you in DMs
<partners - dm's you a list of discord servers partnered with SmoreBot!]], inline = true},
      {name = "Bot Info & <bug", value = [[
<join - some important links
<info - some info about the bot
<bug (the issue, server invite link) - please attach a invite link to the bug!]], inline = true},
      {name = "Music", value = "Sorry, cancelled", inline = true},
    },
    color = discordia.Color(114, 137, 218).value,
    timestamp = os.date('!%Y-%m-%dT%H:%M:%S')
  }
}
		print(string.format('<help command was used by %s', message.author.id))
    end	
	
	if cmd == '<help' then
    message.channel:sendMessage('Help Sent! :mailbox_with_mail:')message.author:sendMessage{
  embed = {
    title = "Command List",
        fields = {
      {name = "Main Commands", value = [[
<echo (text) - says what you say where it says "text"
<memez - shows you the memes
<ping - pings the bot
<smore - shows you some poptarts
<quote - a quote from jdenderplays
<help - this message
<fail - insults you in DMs
<partners - dm's you a list of discord servers partnered with SmoreBot!]], inline = true},
      {name = "Bot Info & <bug", value = [[
<join - some important links
<info - some info about the bot
<bug (the issue, server invite link) - please attach a invite link to the bug!]], inline = true},
      {name = "Music", value = "Sorry, cancelled", inline = true},
	  },
    color = discordia.Color(114, 137, 218).value,
    timestamp = os.date('!%Y-%m-%dT%H:%M:%S')
  }
}
print(string.format('<help command was used by %s', message.author.id))
end
if cmd == '<help' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
    message.author:sendMessage{
  embed = {
    title = "Dev Commands",
        fields = {
{name = "List", value = [[
<sendall - sends a message to every server the bot is in
<reboot - reboots the bot ;)
<game - sets the bots playing status
<announce (text) - announces something in #announcecements
<leaveserver (id) - leaves the server
<update - grabs changes from github
<test> - a test>]], inline = true},
	},
	color = discordia.Color(114, 137, 218).value,
    timestamp = os.date('!%Y-%m-%dT%H:%M:%S')
	}
	}
	print(string.format('a dev used <help, known as %s', message.author.id))
	end
end
--Partners Command
	if cmd == '<partners' then
		message.channel:sendMessage('List Sent! :mailbox_with_mail:')message.author:sendMessage([[
		**Partner List**
		```
		Snowy and Friends - Our First Partnered Server! - https://discord.gg/Y4T38F7
		Coder Lounge - Chronomly6's Server - https://discord.gg/XCmxErJ
		Project Placeholder5 - IDK WHAT THIS PLACE IS - https://discord.gg/ZtgQ62X
		Chillax Zone - A pretty chill server - https://discord.gg/YabxP6P
		Fun Message Lite - a chill and chat server - discord.gg/hVDzyZd
		FireTrap - A cool bot - https://discordapp.com/oauth2/authorize?client_id=278539150699790347&scope=bot&permissions=8
		Single Helix - the server of DNA - https://discord.gg/hZGhcxJ
		```
		__`ShellShock`__
		• With the shutdown of Helix, and me (ROM Typo) being a dev of it, I've decided to keep the bot alive for everyone.

		Add the bot here:
		• http://romtypo.com/bots/helix

		Join my server:
		• http://discord.gg/ywBWwh6
		]])
		print(string.format('<partners command was used by %s', message.author.id, '/', message.author.username))
    end	
	
--Bot Adding Info
	if message.content == '<join' then
            message.channel:sendMessage {
  embed = {
    title = "Here are some important links",
	    fields = {
      {name = "here is the link to add the bot: ", value = "https://discordapp.com/oauth2/authorize?client_id=290228059599142913&scope=bot&permissions=150528", inline = true},
      {name = "here is the link to our website: ", value = "http://www.chronomly6.tk/smorebot.html", inline = true},
	  {name = "here is a link to our support/updates discord:", value = "https://discord.gg/6P6MNAU", inline = true},
      {name = "Our official Twitter:", value = "https://twitter.com/smorebtofficial", inline = true},
    },
    color = discordia.Color(114, 137, 218).value,
    timestamp = os.date('!%Y-%m-%dT%H:%M:%S')
  }
}
    end

--Dev Commands	
	if cmd == "<test" then
	   message.channel:sendMessage("TEST COMMAND version #3\n Third time's a charm\nnvm it isn't (#4)")
	end
	
    if cmd == '<host' then
		local handle = io.popen("hostname")
		local result = handle:read("*a")
		handle:close()
		message.channel:sendMessage(string.format("I am hosted on `%s`",result))
	end

	if cmd == '<update' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		message.channel:sendMessage(":wave:")
		client:stop(true)
		end
	end
	
	if cmd == '<leaveserver' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		local guild = client:getGuild(arg)
		guild:leave()
		end
	end

	if cmd == '<announce' then 
	if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		local channel = client:getTextChannel("282977399761666059")
		channel:sendMessage('**MESSAGE FROM THE DEVS**')channel:sendMessage(arg)
		end
	end
	
	if cmd == '<sendall' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		for guild in client.guilds do
		guild.defaultChannel:sendMessage(arg)
		print('Message Sent to all servers')
		end
		end
	end
	
	if cmd == '<game' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
			client:setGameName(arg)message.channel:sendMessage('Set "playing status" to:')message.channel:sendMessage(arg)
			print('<game command was used')
		end
	end
	
	if message.content == '<reboot' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		message.channel:sendMessage(':wave: BRB!')
		client:stop(true)
		end
	end
	
	
	if cmd == '<guildlist' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
			for guild in client.guilds do
			message.channel:sendMessage(guild.name)
			end
		end
	end
	
	
	if cmd == '<upvoteme' then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
			message:addReaction("👍")
		end
	end
	
--If User is not dev
	if cmd == '<game' then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error 404.5``````You do not have Role: Dev```')
			print(string.format('%s tried to use <game to set', message.author.id))
			print(arg)
		end
	end
	
	if cmd == '<sendall' then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error 404.5``````You do not have Role: Dev```')
			print(string.format('%s tried to use <sendall to send', message.author.id))
			print(arg)
		end
	end
	
	if message.content == '<reboot' then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error2.1``````You do not have Role: Dev```')
			print(string.format('%s tried to use <reboot', message.author.id)) 
		end
	end
	
	if cmd == '<announce' then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error 404.5``````You do not have Role: Dev```')
			print(string.format('%s tried to use <announce to send', message.author.id))
			print(arg)
		end
	end
	
	if message.content == '<leaveserver' then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error2.1``````You do not have Role: Dev```')
			print(string.format('%s tried to use <leaveserver', message.author.id)) 
		end
	end
	
--Music 
	if message.content == '<supported' then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == '<pause' then 
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == '<resume' then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == '<spawn' then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == '<play' then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end

	
end)
local f = io.open("LOGIN_TOKEN", "rb")
    local content = f:read("*all")
local token = string.gsub(content, "%s+", "")
    f:close()
client:run(token)
