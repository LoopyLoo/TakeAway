require 'rubygems'
require 'twilio-ruby'

account_sid = "AC4c9a4bd849635dfcc4d7970f0317724e"
auth_token = "727dc17428f9302ee8e92d9c55c9360b"
client = Twilio::REST::Client.new account_sid, auth_token

from = "441616948733" # Your Twilio number

friends = {
"+447751478764" => "moi",
"+14155557775" => "Boots",
"+14155551234" => "Virgil"
}
friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey #{value}, Your order will be with you in 10 mins"
  )
  puts "Sent message to #{value}"
end