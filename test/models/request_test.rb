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

  test 'should be valid when all attributes are set' do
    attrs = {
      first_name: 'marisa',
      last_name: 'ramon',
      phone: '1234567890',
      email: 'marisa@example.org',
      comments: 'a;sldkfjas;ldfkjas;lf'
    }

    req = Request.new attrs
    assert req.valid?, 'should be valid'
  end

  test 'name, phone, email, comments are required' do
    req = Request.new

    refute req.valid?, 'Blank Message should be invalid'

    assert_match /blank/, req.errors[:first_name].to_s
    assert_match /blank/, req.errors[:last_name].to_s
    assert_match /blank/, req.errors[:phone].to_s
    assert_match /blank/, req.errors[:email].to_s
    assert_match /blank/, req.errors[:comments].to_s
  end

end

