# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require 'dotenv/load'

account_sid = ENV['ACCOUNT_SID']
auth_token = ENV['AUTH_TOKEN']
client = Twilio::REST::Client.new(account_sid, auth_token)

from = ENV['TWILIO_NUMBER'] # Your Twilio number
to = ENV['MY_NUMBER'] # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)
