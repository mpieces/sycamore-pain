require 'test_helper'

class RequestMailerTest < ActionMailer::TestCase
  test "request_appt" do
    request = Request.new first_name: 'Marisa',
                          last_name: 'Ramon',
                          email: 'mer0522@gmail.com',
                          phone: '1234567890',
                          comments: 'as;ldkfjasldkfjas;lkdfj'
    email = RequestMailer.request_appt(request)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal "Appointment Request", email.subject
    assert_equal ["mer0522@gmail.com"], email.to
    assert_equal ["mer0522@gmail.com"], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end

end
