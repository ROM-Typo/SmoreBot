local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Booting SmoreOS 2.0')
	print('Connecting to Discord Servers')
end)
	
client:on('ready', function()
    print('Logged in as User: '.. client.user.username)
end)

--Commands
client:on('messageCreate', function(message)
	-- exit early if the author is the same as the client
	if message.author == client.user then return end

	-- split the message content into a command and everything else
	local cmd, arg = message.content:match('(%S+)%s+(.*)')
	cmd = cmd or message.content
	
	if message.content == '<ping' then
        message.channel:sendMessage(':ping_pong: pong')
		print("<ping command was used")
	end

    if message.content == '<smore' then
        message.channel:sendMessage('https://www.poptarts.com/content/NorthAmerica/pop_tarts/en_US/pages/flavors/bakery/frosted-s-mores-toaster-pastries/jcr:content/productContent/par/responsiveimage.img.png/1475703429032.png')
		print("<smore command was used")
    end
	
	if message.content == '<memez' then
        message.channel:sendMessage('http://wow.zamimg.com/uploads/screenshots/small/233498.jpg')
		print("<memez command was used")
    end
	
	if message.content == '<quote' then
        message.channel:sendMessage('Start using "At the turn of the century" when describing something that happened to you around 1999/2000')
		print("<quote command was used")
	end
		
	if message.content == '<censor' then
		message.channel:sendMessage(string.format('Now Starting: Censorship SubRoutine, Started By ``User: %s``', message.author.username))
		print("<censor command was used")
	end
	
	if message.content == '<fail' then
		message.author:sendMessage(string.format('Get a Life %s', message.author.username))
		print("<fail command was used")
	end
	
	if message.content == '<log' then
		message.channel:sendMessage('`Error 5 = "log.txt not found"`')
	end

--Help command
	if message.content == '<help' then
		message.channel:sendMessage('Help Sent! :mailbox_with_mail:') 
	end
	
	if message.content == '<help' then
	message.author:sendMessage([[
**Command List**
```
<memez - shows you the memes
<ping - pings the bot
<smore - shows you some poptarts
<quote - a quote from https://www.reddit.com/r/Showerthoughts/
<help - this message
<censor - starts the censorship subroutine - DOES NOTHING
<join - some important links , also if you say SmoreBot you can talk to the bot
<fail - insults you in DMs
<log - should print the bot's logs
<partners - dm's you a list of discord servers partnered with SmoreBot!
```
]])
		print("<help command was used")
    end	

--Partner's Command
	if message.content == '<partners' then
		message.channel:sendMessage('List Sent! :mailbox_with_mail:') 
	end
	
	if message.content == '<partners' then
		message.author:sendMessage([[
**Partner List**
```
Snowy and Friends - Our First Partnered Server! - https://discord.gg/Y4T38F7
Coder Lounge - Main Dev's Server - https://discord.gg/XCmxErJ
Project Placeholder5 - A Server About Stuff - https://discord.gg/V2b5e6p
```
]])
		print("<partners command was used")
    end	
	
--Bot Adding Info
	if message.content == '<join' then
        message.channel:sendMessage('```here is the link to add the bot:``` https://discordapp.com/oauth2/authorize?&client_id=290228059599142913&scope=bot&permissions=0 ```here is the link to our website:``` http://www.smorebot.tk')
		print("<join command was used")   
	end
	
	
end)

client:run('bot-token')
