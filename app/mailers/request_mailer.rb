class RequestMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.request_mailer.request_appt.subject
  #
  def request_appt(request)
    @body = request.comments

    mail to: "mer0522@gmail.com", from: request.email
  end
end
