require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest

  test "GET new" do
    get new_request_url

    assert_response :success

    assert_select 'form' do
      assert_select 'input[type=text]'
      assert_select 'input[type=text]'
      assert_select 'input[type=email]'
      assert_select 'input[type=phone]'
      assert_select 'textarea'
      assert_select 'input[type=submit]'
    end
  end

end


