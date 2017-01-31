require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest

  test "GET new" do
    get new_request_url

    assert_response :success

    assert_select 'form' do
      assert_select 'input[type=text]'
      assert_select 'input[type=text]'
      assert_select 'input[type=email]'
      assert_select 'input[type=text]'
      assert_select 'textarea'
      assert_select 'input[type=submit]'
    end
  end

  test "POST create" do
    assert_difference 'ActionMailer::Base.deliveries.size', 1 do
      post create_request_url, params: {
        request: {
          first_name: 'test1',
          last_name: 'test2',
          email: 'test@me.com',
          phone: '1234567890',
          comments: 'a;sldkfja;slkdfja;skdjf'
      }
    }
  end

    assert_redirected_to new_request_url

    follow_redirect!

    assert_match /Request received. Thank you./, response.body
  end

  test "invalid POST create" do
    post create_request_url, params: {
      request: { first_name: '', last_name: '', email: '', phone: '', comments: '' }
    }

    assert_match /First name .* blank/, response.body
    assert_match /Last name .* blank/, response.body
    assert_match /Email .* blank/, response.body
    assert_match /Phone .* blank/, response.body
    assert_match /Comments .* blank/, response.body
  end

end


