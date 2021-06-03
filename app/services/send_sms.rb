class SendSms
	attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: Rails.application.secrets.twilio[:phone_number],
      to: "+919131598623",
      body: message
    })
  end
end