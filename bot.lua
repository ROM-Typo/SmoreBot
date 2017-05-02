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

local f = io.open("PREFIX", "rb")
    local content = f:read("*all")
local prefix = string.gsub(content, "%s+", "")
    f:close()

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
	
	if cmd == (string.format(prefix .. 'ping')) then 
        message.channel:sendMessage(':ping_pong: pong!')
		print(string.format('<ping command was used by %s', message.author.id))
	end

    if cmd == (string.format(prefix .. 'smore')) then
        message.channel:sendMessage('https://www.poptarts.com/content/NorthAmerica/pop_tarts/en_US/pages/flavors/bakery/frosted-s-mores-toaster-pastries/jcr:content/productContent/par/responsiveimage.img.png/1475703429032.png')
		print(string.format('<smore command was used by %s', message.author.id))
    end
	
	if cmd == (string.format(prefix .. 'meme')) then
        message.channel:sendMessage('http://prntscr.com/ewxqgu')
		print(string.format('<memez command was used by %s', message.author.id))
    end
	
	if cmd == (string.format(prefix .. 'quote')) then
        message.channel:sendMessage([[`print(print`
-Chronomly6 2017]])
		print(string.format('<quote command was used by %s', message.author.id))
	end
	
	if cmd == (string.format(prefix .. 'fail')) then
		message.channel:sendMessage(string.format('%s, you clearly havent been burdened by the overobundence of education have you?', arg))
		print(string.format('<fail command was used by %s', message.author.id))
	end
	
--Bug Command
	if cmd == (string.format(prefix .. 'bug')) then 
		local channel = client:getTextChannel("296030986708451328")
		local maxUses = 1
		local maxAge = 1800 
		local invite = message.channel:createInvite(maxAge, maxUses)
		--<@&294883525881102336>
		channel:sendMessage(string.format('`Insert Mention Here` , User: %s reported:', message.author.username));
		channel:sendMessage(arg);
		channel:sendMessage('https://discord.gg/' .. invite.code)
		(print(string.format('s.bug command was used by %s to say', message.author.id))print(arg))
	end
	
--Echo Command
	if cmd == (string.format(prefix .. 'echo')) then
	if arg == nil then return end
		message.channel:sendMessage(arg)
		print(string.format('<echo command was used by %s to say', message.author.id))print(arg)
	end
	
--Info Command
	if cmd == (string.format(prefix .. 'info')) then
		message.channel:sendMessage(string.format([[
Hello, I am SmoreBot,
I am a Discord Bot made with **Lua** using **Discordia**, I am developed by Chronomly6 and jdenderplays, with a js version being made by SpaceX and ROM Typo, also I am in %s servers.]], client.guildCount
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
	
	if cmd == (string.format(prefix .. 'help')) then
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
if cmd == (string.format(prefix .. 'help')) then
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
<test> - a test>
<ban - what you think it does
<kick - what you think it does]], inline = true},
	},
	color = discordia.Color(114, 137, 218).value,
    timestamp = os.date('!%Y-%m-%dT%H:%M:%S')
	}
	}
	print(string.format('a dev used <help, known as %s', message.author.id))
	end
end
--Partners Command
	if cmd == (string.format(prefix .. 'partners')) then
		message.channel:sendMessage('List Sent! :mailbox_with_mail:')message.author:sendMessage([[
		**Partner List**
		```
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
	if message.content == (string.format(prefix .. 'join')) then
            message.channel:sendMessage {
  embed = {
    title = "Here are some important links",
	    fields = {
      {name = "here is the link to add the bot: ", value = "https://discordapp.com/oauth2/authorize?client_id=290228059599142913&scope=bot&permissions=2146958463", inline = true},
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
	if cmd == (string.format(prefix .. 'test')) then
	   message.channel:sendMessage("TEST COMMAND version #3\n Third time's a charm\nnvm it isn't #4\n test command v5")
	end
	
	if cmd == (string.format(prefix .. 'kick')) then
    if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
        local id = arg:match('<@!?([0-9]+)>')
          if id then
		  user = client:getUser(id)
            message.guild:kickUser(user)
            message.channel:sendMessage(string.format('SUMMONING THE KICK HAMMER ON: %s', id))
            print(string.format('<kick command was used by %s', message.author.id))
			end
		end
    end
	
	if cmd == (string.format(prefix .. 'ban')) then
    if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
        local id = arg:match('<@!?([0-9]+)>')
          if id then
		  user = client:getUser(id)
            message.guild:banUser(user)
            message.channel:sendMessage(string.format('SUMMONING THE BAN HAMMER ON: %s', id))
            print(string.format('<ban command was used by %s', message.author.id))
			end
		end
	end
	
    if cmd == (string.format(prefix .. 'host')) then
		local handle = io.popen("hostname")
		local result = handle:read("*a")
		handle:close()
		message.channel:sendMessage(string.format("I am hosted on `%s`",result))
	end

	if cmd == (string.format(prefix .. 'update')) then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		message.channel:sendMessage(":wave: grabbing from github!")
		client:stop(true)
		end
	end
	
	if cmd == (string.format(prefix .. 'leaveserver')) then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		local guild = client:getGuild(arg)
		guild:leave()
		end
	end

	if cmd == (string.format(prefix .. 'announce')) then 
	if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		local channel = client:getTextChannel("282977399761666059")
		channel:sendMessage(string.format('**MESSAGE FROM THE DEV, %s**', message.author.username))channel:sendMessage(arg)
		end
	end
	
	if cmd == (string.format(prefix .. 'sendall')) then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		message.channel:sendMessage('')
		for guild in client.guilds do
		guild.defaultChannel:sendMessage(arg)
		print('Message Sent to all servers')
		end
		end
	end
	
	if cmd == (string.format(prefix .. 'game')) then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
			client:setGameName(arg)message.channel:sendMessage('Set "playing status" to:')message.channel:sendMessage(arg)
			print('<game command was used')
		end
	end
	
	if message.content == (string.format(prefix .. 'reboot')) then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
		message.channel:sendMessage(':wave: BRB!')
		client:stop(true)
		end
	end
	
	
	if cmd == (string.format(prefix .. 'guildlist')) then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
			for guild in client.guilds do
			message.channel:sendMessage(guild.name)
			end
		end
	end
	
	
	if cmd == (string.format(prefix .. 'upvoteme')) then
		if message.author.id == CHRONOMLY or message.author.id == ROMTYPO or message.author.id == JDENDER or message.author.id == SPACEX then
			message:addReaction("👍")
		end
	end
	
--If User is not dev
	if cmd == (string.format(prefix .. 'game')) then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error 404.5``````You do not have Role: Dev```')
			print(string.format('%s tried to use <game to set', message.author.id))
			print(arg)
		end
	end
	
	if cmd == (string.format(prefix .. 'sendall')) then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error 404.5``````You do not have Role: Dev```')
			print(string.format('%s tried to use <sendall to send', message.author.id))
			print(arg)
		end
	end
	
	if cmd == (string.format(prefix .. 'reboot')) then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error2.1``````You do not have Role: Dev```')
			print(string.format('%s tried to use <reboot', message.author.id)) 
		end
	end
	
	if cmd == (string.format(prefix .. 'announce')) then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error 404.5``````You do not have Role: Dev```')
			print(string.format('%s tried to use <announce to send', message.author.id))
			print(arg)
		end
	end
	
	if cmd == (string.format(prefix .. 'leaveserver')) then
		if message.author.id ~= CHRONOMLY and message.author.id ~= ROMTYPO and message.author.id ~= JDENDER and message.author.id ~= SPACEX then
			message.channel:sendMessage('```Error2.1``````You do not have Role: Dev```')
			print(string.format('%s tried to use <leaveserver', message.author.id))
			print(arg)
		end
	end
	
--Music 
	if message.content == (string.format(prefix .. 'supported')) then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == (string.format(prefix .. 'pause')) then 
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == (string.format(prefix .. 'resume')) then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == (string.format(prefix .. 'spawn')) then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end
	
	if cmd == (string.format(prefix .. 'play')) then
		message.channel:sendMessage('```Chronomly has given up on music: please add ShellShock here:``` http://romtypo.com/bots/helix ```Or FireTrap here:``` https://goo.gl/SDbmyW')
	end

	
end)
local f = io.open("LOGIN_TOKEN", "rb")
    local content = f:read("*all")
local token = string.gsub(content, "%s+", "")
    f:close()
client:run(token)
