class TextsController < ApplicationController

  def create
    EmailFriend.send_email(params["Body"], params["From"], 
                           ENV["Friend_Email"]).deliver
    
    # In the future, add a backend so users can send
    # to multiple friends.  Currently in trial mode, so
    # I'm testing sending to only one friend.
    
    render json: {message: "sent"}
  end
end
