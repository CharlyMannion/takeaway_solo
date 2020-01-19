require 'twilio-ruby'
require 'dotenv/load'

class Message

  # attr_reader :account_sid, :auth_token, :from, :to, :client

  # def initialize
  #   @account_sid = ENV['ACCOUNT_SID']
  #   @auth_token = ENV['AUTH_TOKEN']
  #   @from = ENV['TWILIO_NUMBER']
  #   @to = ENV['MY_NUMBER']
  #   @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
  # end

  def send
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = ENV['TWILIO_NUMBER']
    to = ENV['MY_NUMBER']

    client.messages.create(
    from: from,
    to: to,
    body: "Hey friend!"
    )
    "Text sent"
  end
end

# ruby './lib/message.rb'
p "running the message programme"
msg = Message.new
msg.send
