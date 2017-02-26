local discordia = require('discordia')
local client = discordia.Client()

client:on('ready', function()
    print('Logged in as '.. client.user.username)
end)

client:on('messageCreate', function(message)
    if message.content == '<ping' then
        message.channel:sendMessage(':ping_pong: pong')
	end

    if message.content == '<spam' then
        message.channel:sendMessage('https://upload.wikimedia.org/wikipedia/commons/0/09/Spam_can.png')
    end
	
	if message.content == '<quote' then
        message.channel:sendMessage('If parents see me gaming, leave and come back an hour later and I am still playing, they will assume I was gaming the whole time. If parents see me studying, leave and come back another hour later and I am still studying, they will assume I was gaming the whole time.')
    end
	
	if message.content == '<help' then
        message.channel:sendMessage('**Command List** ```<help: this message <spam: sends you some spam <quote: a quote from www.reddit.com/r/Showerthoughts/```')
    end
end)

client:run('bot-token')
