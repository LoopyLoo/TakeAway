require 'rubygems'
require 'twilio-ruby'

class Sendsms

  def send(tel_number,message)
  account_sid = "AC9a93af361a511858dd0bffce18b119be"
  auth_token = "7f9b4b1b2d61ea5b7e62cec994cfa057"
  client = Twilio::REST::Client.new account_sid, auth_token

  from = "+442003331577" # Your Twilio number

  friends = {
  "+447751478764" => "moi"
  }
  friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => message
  )
  puts "Sent message to #{value}"

    end
  end
end