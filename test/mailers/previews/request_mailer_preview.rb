# Preview all emails at http://localhost:3000/rails/mailers/request_mailer
class RequestMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request_mailer/request_appt
  def request_appt
    # RequestMailer.request_appt
    request = Request.new first_name: 'TEST1',
                          last_name: 'TEST2',
                          email: 'sender@example.org',
                          phone: '1234567890',
                          comments: 'This is the body of the email'
     RequestMailer.request_appt request
  end

end
