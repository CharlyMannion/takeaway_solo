require 'twilio-ruby'
require 'dotenv/load'

class Message

  attr_reader :from, :to, :auth_token, :account_sid, :message

  def initialize
    @account_sid = ENV['ACCOUNT_SID']
    @auth_token = ENV['AUTH_TOKEN']
    @from = ENV['TWILIO_NUMBER']
    @to = ENV['MY_NUMBER']
    @message = message
  #   @client = Twilio::REST::Client.new(ENV['ACCOUNT_SID'], ENV['AUTH_TOKEN'])
  end

  def send
    client = Twilio::REST::Client.new(@account_sid, @auth_token)
    client.messages.create(
    from: @from,
    to: @to,
    body: "Order confirmed!"
    )
    "Text sent"
  end
end
