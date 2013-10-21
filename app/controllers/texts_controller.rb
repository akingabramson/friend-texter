class TextsController < ApplicationController
  def index

    # send_emaililFriend.send_email.deliver
    render json: {message: "sent"}
  end

  def create
    
    EmailFriend.send_email(params["Body"], params["From"], 
                           "a.kingabramson@gmail.com").deliver
    render json: {message: "sent"}
  end
end
