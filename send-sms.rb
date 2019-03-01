require 'twilio-ruby'

account_sid = 'AC5b7066f02d447b1db91b6e71b1753476'
auth_token = 'pJfQVWIz0WUFVBWK40Se9qCcWGssWEtsgXTYR/dl'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '14843218256' # Your Twilio number
to = '+16108642346' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)