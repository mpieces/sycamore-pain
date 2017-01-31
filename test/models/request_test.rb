require 'test_helper'

class RequestTest < ActiveSupport::TestCase

  test 'responds to name, phone, email and comments' do
    req = Request.new

    assert req.respond_to?(:first_name), 'does not respond to :first_name'
    assert req.respond_to?(:last_name), 'does not respond to :last_name'
    assert req.respond_to?(:phone), 'does not respond to :phone'
    assert req.respond_to?(:email), 'does not respond to :email'
    assert req.respond_to?(:comments), 'does not respond to :comments'
  end
end
