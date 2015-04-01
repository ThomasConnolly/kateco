class WeMailOutPreview < ActionMailer::Preview
  def sample_mail_preview
    WeMailOut.sample_email(User.first)
  end
end