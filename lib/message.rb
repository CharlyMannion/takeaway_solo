# require 'twilio-ruby'

class Message

  attr_reader :account_sid, :auth_token, :from, :to, :client

  def initialize
    @account_sid = ENV['ACCOUNT_SID']
    @auth_token = ENV['AUTH_TOKEN']
    @from = ENV['TWILIO_NUMBER']
    @to = ENV['MY_NUMBER']
    # @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

#   def send
#     client.messages.create(
#     from: from,
#     to: to,
#     body: "Hey friend!"
#     )
#   end
end

# msg = Message.new
# msg.send
