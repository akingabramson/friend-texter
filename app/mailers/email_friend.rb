class EmailFriend < ActionMailer::Base
  # default from: "aka@friendtexter.com"

  def send_email(body, from, to)
    @body = body
    mail(:from => from + "@textyourfriends.mailgun.org",
         :to => to,
         :subject => "Text from #{from[2..-1]}")
  end

end
