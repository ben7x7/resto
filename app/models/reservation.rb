class Reservation < MailForm::Base
  attribute :name,        :validate => true
  attribute :email,       :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :phone,       :attachment => true
  attribute :pax,         :attachment => true
  attribute :date,        :attachment => true
  attribute :time,        :attachment => true
  attribute :nickname,    :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "New reservation",
      :to => "benoit.bessiere@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
