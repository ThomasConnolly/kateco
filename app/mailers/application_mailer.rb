class ApplicationMailer < ActionMailer::Base
  default from: "Katecomarketinggroup@gmail.com"
  layout 'mailer'

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: "sample email")
  end
end
