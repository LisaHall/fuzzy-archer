# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC036ff2f601ae47503bd49d5679e4f2ee'
auth_token = '4d50b7e21c2252e0ccda9b2749b0eb8f'
@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.account.sms.messages.create(:body => "Jenny please?! I love you <3",
:to => "+15103036289", # Replace with your phone number
:from => "+15109315987") # Replace with your Twilio number
puts message.sid
