class MailController < ApplicationController

  def index
    render text: "saofij"
  end

  def create
    recipient = /(.+)@textyourfriends.mailgun.org/.match(params[:recipient])[1]
    body = params["stripped-text"]

    p recipient
    p body

    #send text
    @client = Twilio::REST::Client.new(ENV["Twilio_SID"], ENV["Twilio_Auth"])
    message = @client.account.sms.messages.create(
      :body => body,
      :to => recipient,
      :from => "+14156589355"
    )
    render json: {message: "received"}
  end
end
